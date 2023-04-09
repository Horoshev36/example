part of 'table_screen_bloc.dart';

@freezed
class TableScreenState extends BaseBlocState with _$TableScreenState {
  const TableScreenState._();

  const factory TableScreenState({
    BlocAction? action,
    @Default(MainAxisAlignment.start) MainAxisAlignment axisCurrent,
    @Default(false) bool leftButtonActive,
    @Default(true) bool rightButtonActive,
    @Default(Duration(seconds: 1)) Duration duration,
    @Default(null) String? selectedPerson,
    @Default([]) List<Sell> sells,
    @Default([]) List<Person> persons,
    @Default(CurrentStateWindow.active) CurrentStateWindow currentStateWindow,
    @Default(null) Offset? positionWindowOnMinimize,
    @Default(null) Offset? positionWindowOnActive,
  }) = _TableScreenState;
}
