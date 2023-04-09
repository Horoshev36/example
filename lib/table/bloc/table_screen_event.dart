part of 'table_screen_bloc.dart';

@freezed
class TableScreenEvent with _$TableScreenEvent {
  const factory TableScreenEvent.init() = Init;

  const factory TableScreenEvent.movePressed() = _MovePressed;
  const factory TableScreenEvent.addNew(Sell sell) = _AddNew;
  const factory TableScreenEvent.addNewPerson(String fullname) = _AddNewPerson;
  const factory TableScreenEvent.selectPerson(String fullname) = _SelectPerson;
  const factory TableScreenEvent.closePressed() = _ClosePressed;
  const factory TableScreenEvent.statementPressed() = _StatementPressed;
  const factory TableScreenEvent.declarationPressed() = _DeclarationPressed;
  const factory TableScreenEvent.switchCurrentStateWindow() = _SwitchCurrentStateWindow;
}
