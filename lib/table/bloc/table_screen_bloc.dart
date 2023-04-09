import 'dart:async';


import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bloc/bloc.dart';
import 'package:example/core/bloc/base_bloc_state.dart';
import 'package:example/core/bloc/bloc_action.dart';
import 'package:example/enums/current_state_window.dart';
import 'package:example/model/person.dart';
import 'package:example/model/sells.dart';
import 'package:example/ustils/myExcel.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_screen_bloc.freezed.dart';
part 'table_screen_event.dart';
part 'table_screen_state.dart';

class TableScreenBloc extends Bloc<TableScreenEvent, TableScreenState> {
  TableScreenBloc() : super(const TableScreenState()) {
    on<Init>(_init);
    on<_MovePressed>(_movePressed);
    on<_SelectPerson>(_selectPerson);
    on<_AddNew>(_addNew);
    on<_SwitchCurrentStateWindow>(_switchCurrentStateWindow);
    on<_StatementPressed>(_statementPressed);
    add(const TableScreenEvent.init());
  }

  Future<FutureOr<void>> _init(Init event, Emitter<TableScreenState> emit) async {
    List<Sell> sells = [];
    Set<String> persons = {};
    List<Person> personsList = [];
    sells.addAll(Sells.fromJson(testData).sells);

    for (var item in state.persons) {
      persons.add(item.fullname);
    }

    for (var item in Sells.fromJson(testData).sells) {
      persons.add(item.fullname);
    }

    for (var item in persons) {
      personsList.add(Person(fullname: item));
    }
    emit(state.copyWith(sells: sells, persons: personsList));
  }

  FutureOr<void> _movePressed(_MovePressed event, Emitter<TableScreenState> emit) async {
    emit(state.copyWith(leftButtonActive: false, rightButtonActive: false));
    if (state.axisCurrent == MainAxisAlignment.start) {
      emit(state.copyWith(axisCurrent: MainAxisAlignment.end));
      await Future.delayed(state.duration);
      emit(state.copyWith(leftButtonActive: true, rightButtonActive: false));
    } else {
      emit(state.copyWith(axisCurrent: MainAxisAlignment.start));
      await Future.delayed(state.duration);
      emit(state.copyWith(leftButtonActive: false, rightButtonActive: true));
    }
  }

  FutureOr<void> _selectPerson(_SelectPerson event, Emitter<TableScreenState> emit) async {
    emit(state.copyWith(selectedPerson: event.fullname));
  }

  FutureOr<void> _addNew(_AddNew event, Emitter<TableScreenState> emit) {
    List<Sell> sells = [];
    sells.addAll(state.sells);
    sells.add(event.sell);
    emit(state.copyWith(sells: sells));
  }

  FutureOr<void> _switchCurrentStateWindow(_SwitchCurrentStateWindow event, Emitter<TableScreenState> emit) {
    final win = appWindow;
    switch (state.currentStateWindow) {
      case CurrentStateWindow.active:
        emit(state.copyWith(positionWindowOnActive: win.position));
        const initialSize = Size(10, 10);
        win.minSize = initialSize;
        win.size = initialSize;
        if (state.positionWindowOnMinimize == null) {
          win.position = Offset(win.position.dx > 1920 ? 2000 : 250, 120);
        } else {
          win.position = state.positionWindowOnMinimize!;
        }
        emit(state.copyWith(currentStateWindow: CurrentStateWindow.minimize));
        break;
      case CurrentStateWindow.minimize:
        emit(state.copyWith(positionWindowOnMinimize: win.position));
        const initialSize = Size(650, 500);
        win.minSize = initialSize;
        win.size = initialSize;
        if (state.positionWindowOnActive != null) {
          win.position = state.positionWindowOnActive!;
        }
        emit(state.copyWith(currentStateWindow: CurrentStateWindow.active));

        break;
    }
  }

  Future<FutureOr<void>> _statementPressed(_StatementPressed event, Emitter<TableScreenState> emit) async {
    String path = "/xls/r.xlsx";
    ExcelHelper.createExcelFromSells(sells: Sells(sells: state.sells), path: path);
    print('file create');
  }
}
