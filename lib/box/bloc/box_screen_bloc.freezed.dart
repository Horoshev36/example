// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoxScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() movePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? movePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? movePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MovePressed value) movePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(MovePressed value)? movePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MovePressed value)? movePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxScreenEventCopyWith<$Res> {
  factory $BoxScreenEventCopyWith(
          BoxScreenEvent value, $Res Function(BoxScreenEvent) then) =
      _$BoxScreenEventCopyWithImpl<$Res, BoxScreenEvent>;
}

/// @nodoc
class _$BoxScreenEventCopyWithImpl<$Res, $Val extends BoxScreenEvent>
    implements $BoxScreenEventCopyWith<$Res> {
  _$BoxScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$BoxScreenEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'BoxScreenEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() movePressed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? movePressed,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? movePressed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MovePressed value) movePressed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(MovePressed value)? movePressed,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MovePressed value)? movePressed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements BoxScreenEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$MovePressedCopyWith<$Res> {
  factory _$$MovePressedCopyWith(
          _$MovePressed value, $Res Function(_$MovePressed) then) =
      __$$MovePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovePressedCopyWithImpl<$Res>
    extends _$BoxScreenEventCopyWithImpl<$Res, _$MovePressed>
    implements _$$MovePressedCopyWith<$Res> {
  __$$MovePressedCopyWithImpl(
      _$MovePressed _value, $Res Function(_$MovePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovePressed implements MovePressed {
  const _$MovePressed();

  @override
  String toString() {
    return 'BoxScreenEvent.movePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() movePressed,
  }) {
    return movePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? movePressed,
  }) {
    return movePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? movePressed,
    required TResult orElse(),
  }) {
    if (movePressed != null) {
      return movePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MovePressed value) movePressed,
  }) {
    return movePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(MovePressed value)? movePressed,
  }) {
    return movePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MovePressed value)? movePressed,
    required TResult orElse(),
  }) {
    if (movePressed != null) {
      return movePressed(this);
    }
    return orElse();
  }
}

abstract class MovePressed implements BoxScreenEvent {
  const factory MovePressed() = _$MovePressed;
}

/// @nodoc
mixin _$BoxScreenState {
  BlocAction? get action => throw _privateConstructorUsedError;
  MainAxisAlignment get axisCurrent => throw _privateConstructorUsedError;
  bool get leftButtonActive => throw _privateConstructorUsedError;
  bool get rightButtonActive => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoxScreenStateCopyWith<BoxScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxScreenStateCopyWith<$Res> {
  factory $BoxScreenStateCopyWith(
          BoxScreenState value, $Res Function(BoxScreenState) then) =
      _$BoxScreenStateCopyWithImpl<$Res, BoxScreenState>;
  @useResult
  $Res call(
      {BlocAction? action,
      MainAxisAlignment axisCurrent,
      bool leftButtonActive,
      bool rightButtonActive,
      Duration duration});
}

/// @nodoc
class _$BoxScreenStateCopyWithImpl<$Res, $Val extends BoxScreenState>
    implements $BoxScreenStateCopyWith<$Res> {
  _$BoxScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? axisCurrent = null,
    Object? leftButtonActive = null,
    Object? rightButtonActive = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      axisCurrent: null == axisCurrent
          ? _value.axisCurrent
          : axisCurrent // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      leftButtonActive: null == leftButtonActive
          ? _value.leftButtonActive
          : leftButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      rightButtonActive: null == rightButtonActive
          ? _value.rightButtonActive
          : rightButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoxScreenStateCopyWith<$Res>
    implements $BoxScreenStateCopyWith<$Res> {
  factory _$$_BoxScreenStateCopyWith(
          _$_BoxScreenState value, $Res Function(_$_BoxScreenState) then) =
      __$$_BoxScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocAction? action,
      MainAxisAlignment axisCurrent,
      bool leftButtonActive,
      bool rightButtonActive,
      Duration duration});
}

/// @nodoc
class __$$_BoxScreenStateCopyWithImpl<$Res>
    extends _$BoxScreenStateCopyWithImpl<$Res, _$_BoxScreenState>
    implements _$$_BoxScreenStateCopyWith<$Res> {
  __$$_BoxScreenStateCopyWithImpl(
      _$_BoxScreenState _value, $Res Function(_$_BoxScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? axisCurrent = null,
    Object? leftButtonActive = null,
    Object? rightButtonActive = null,
    Object? duration = null,
  }) {
    return _then(_$_BoxScreenState(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      axisCurrent: null == axisCurrent
          ? _value.axisCurrent
          : axisCurrent // ignore: cast_nullable_to_non_nullable
              as MainAxisAlignment,
      leftButtonActive: null == leftButtonActive
          ? _value.leftButtonActive
          : leftButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      rightButtonActive: null == rightButtonActive
          ? _value.rightButtonActive
          : rightButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_BoxScreenState extends _BoxScreenState {
  const _$_BoxScreenState(
      {this.action,
      this.axisCurrent = MainAxisAlignment.start,
      this.leftButtonActive = false,
      this.rightButtonActive = true,
      this.duration = const Duration(seconds: 1)})
      : super._();

  @override
  final BlocAction? action;
  @override
  @JsonKey()
  final MainAxisAlignment axisCurrent;
  @override
  @JsonKey()
  final bool leftButtonActive;
  @override
  @JsonKey()
  final bool rightButtonActive;
  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'BoxScreenState(action: $action, axisCurrent: $axisCurrent, leftButtonActive: $leftButtonActive, rightButtonActive: $rightButtonActive, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoxScreenState &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.axisCurrent, axisCurrent) ||
                other.axisCurrent == axisCurrent) &&
            (identical(other.leftButtonActive, leftButtonActive) ||
                other.leftButtonActive == leftButtonActive) &&
            (identical(other.rightButtonActive, rightButtonActive) ||
                other.rightButtonActive == rightButtonActive) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, axisCurrent,
      leftButtonActive, rightButtonActive, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoxScreenStateCopyWith<_$_BoxScreenState> get copyWith =>
      __$$_BoxScreenStateCopyWithImpl<_$_BoxScreenState>(this, _$identity);
}

abstract class _BoxScreenState extends BoxScreenState {
  const factory _BoxScreenState(
      {final BlocAction? action,
      final MainAxisAlignment axisCurrent,
      final bool leftButtonActive,
      final bool rightButtonActive,
      final Duration duration}) = _$_BoxScreenState;
  const _BoxScreenState._() : super._();

  @override
  BlocAction? get action;
  @override
  MainAxisAlignment get axisCurrent;
  @override
  bool get leftButtonActive;
  @override
  bool get rightButtonActive;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_BoxScreenStateCopyWith<_$_BoxScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
