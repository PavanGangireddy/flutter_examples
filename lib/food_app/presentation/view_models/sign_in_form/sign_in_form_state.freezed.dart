// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required bool hasEnteredMobileNo, required bool hasEnteredOtp}) {
    return _SignInFormState(
      hasEnteredMobileNo: hasEnteredMobileNo,
      hasEnteredOtp: hasEnteredOtp,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  bool get hasEnteredMobileNo => throw _privateConstructorUsedError;
  bool get hasEnteredOtp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call({bool hasEnteredMobileNo, bool hasEnteredOtp});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? hasEnteredMobileNo = freezed,
    Object? hasEnteredOtp = freezed,
  }) {
    return _then(_value.copyWith(
      hasEnteredMobileNo: hasEnteredMobileNo == freezed
          ? _value.hasEnteredMobileNo
          : hasEnteredMobileNo // ignore: cast_nullable_to_non_nullable
              as bool,
      hasEnteredOtp: hasEnteredOtp == freezed
          ? _value.hasEnteredOtp
          : hasEnteredOtp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool hasEnteredMobileNo, bool hasEnteredOtp});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? hasEnteredMobileNo = freezed,
    Object? hasEnteredOtp = freezed,
  }) {
    return _then(_SignInFormState(
      hasEnteredMobileNo: hasEnteredMobileNo == freezed
          ? _value.hasEnteredMobileNo
          : hasEnteredMobileNo // ignore: cast_nullable_to_non_nullable
              as bool,
      hasEnteredOtp: hasEnteredOtp == freezed
          ? _value.hasEnteredOtp
          : hasEnteredOtp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInFormState extends _SignInFormState {
  const _$_SignInFormState(
      {required this.hasEnteredMobileNo, required this.hasEnteredOtp})
      : super._();

  @override
  final bool hasEnteredMobileNo;
  @override
  final bool hasEnteredOtp;

  @override
  String toString() {
    return 'SignInFormState(hasEnteredMobileNo: $hasEnteredMobileNo, hasEnteredOtp: $hasEnteredOtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.hasEnteredMobileNo, hasEnteredMobileNo) &&
            const DeepCollectionEquality()
                .equals(other.hasEnteredOtp, hasEnteredOtp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasEnteredMobileNo),
      const DeepCollectionEquality().hash(hasEnteredOtp));

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState extends SignInFormState {
  const factory _SignInFormState(
      {required bool hasEnteredMobileNo,
      required bool hasEnteredOtp}) = _$_SignInFormState;
  const _SignInFormState._() : super._();

  @override
  bool get hasEnteredMobileNo;
  @override
  bool get hasEnteredOtp;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
