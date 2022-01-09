// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

  _DataStateSuccess<T> success<T>(T data) {
    return _DataStateSuccess<T>(
      data,
    );
  }

  _DataStateError<T> error<T>(DioError error) {
    return _DataStateError<T>(
      error,
    );
  }
}

/// @nodoc
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DioError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;
}

/// @nodoc
abstract class _$DataStateSuccessCopyWith<T, $Res> {
  factory _$DataStateSuccessCopyWith(_DataStateSuccess<T> value,
          $Res Function(_DataStateSuccess<T>) then) =
      __$DataStateSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$DataStateSuccessCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$DataStateSuccessCopyWith<T, $Res> {
  __$DataStateSuccessCopyWithImpl(
      _DataStateSuccess<T> _value, $Res Function(_DataStateSuccess<T>) _then)
      : super(_value, (v) => _then(v as _DataStateSuccess<T>));

  @override
  _DataStateSuccess<T> get _value => super._value as _DataStateSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_DataStateSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_DataStateSuccess<T> implements _DataStateSuccess<T> {
  const _$_DataStateSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DataStateSuccessCopyWith<T, _DataStateSuccess<T>> get copyWith =>
      __$DataStateSuccessCopyWithImpl<T, _DataStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DioError error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DataStateSuccess<T> implements DataState<T> {
  const factory _DataStateSuccess(T data) = _$_DataStateSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$DataStateSuccessCopyWith<T, _DataStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataStateErrorCopyWith<T, $Res> {
  factory _$DataStateErrorCopyWith(
          _DataStateError<T> value, $Res Function(_DataStateError<T>) then) =
      __$DataStateErrorCopyWithImpl<T, $Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$DataStateErrorCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$DataStateErrorCopyWith<T, $Res> {
  __$DataStateErrorCopyWithImpl(
      _DataStateError<T> _value, $Res Function(_DataStateError<T>) _then)
      : super(_value, (v) => _then(v as _DataStateError<T>));

  @override
  _DataStateError<T> get _value => super._value as _DataStateError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DataStateError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_DataStateError<T> implements _DataStateError<T> {
  const _$_DataStateError(this.error);

  @override
  final DioError error;

  @override
  String toString() {
    return 'DataState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataStateError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DataStateErrorCopyWith<T, _DataStateError<T>> get copyWith =>
      __$DataStateErrorCopyWithImpl<T, _DataStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(DioError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(DioError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DataStateError<T> implements DataState<T> {
  const factory _DataStateError(DioError error) = _$_DataStateError<T>;

  DioError get error;
  @JsonKey(ignore: true)
  _$DataStateErrorCopyWith<T, _DataStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
