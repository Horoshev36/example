part of 'box_screen_bloc.dart';

@freezed
class BoxScreenState extends BaseBlocState with _$BoxScreenState {
  const BoxScreenState._();

  const factory BoxScreenState({
    BlocAction? action,
    @Default(MainAxisAlignment.start) MainAxisAlignment axisCurrent,
    @Default(false) bool leftButtonActive,
    @Default(true) bool rightButtonActive,
    @Default(Duration(seconds: 1)) Duration duration,
  }) = _BoxScreenState;
}
