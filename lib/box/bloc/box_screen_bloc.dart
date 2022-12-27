import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/core/bloc/base_bloc_state.dart';
import 'package:example/core/bloc/bloc_action.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'box_screen_bloc.freezed.dart';

part 'box_screen_event.dart';

part 'box_screen_state.dart';

class BoxScreenBloc extends Bloc<BoxScreenEvent, BoxScreenState> {
  BoxScreenBloc() : super(const BoxScreenState()) {
    on<Init>(_init);
    on<MovePressed>(_movePressed);
    add(const BoxScreenEvent.init());
  }

  FutureOr<void> _init(Init event, Emitter<BoxScreenState> emit) {}

  Future<FutureOr<void>> _movePressed(MovePressed event, Emitter<BoxScreenState> emit) async {
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
}
