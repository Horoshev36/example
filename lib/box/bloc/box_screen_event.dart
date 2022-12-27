part of 'box_screen_bloc.dart';

@freezed
class BoxScreenEvent with _$BoxScreenEvent {
  const factory BoxScreenEvent.init() = Init;

  const factory BoxScreenEvent.movePressed() = MovePressed;
}
