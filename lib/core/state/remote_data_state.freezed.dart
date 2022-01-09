// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remote_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteDataStateTearOff {
  const _$RemoteDataStateTearOff();

  _RemoteDataStateInitial<T> initial<T>() {
    return _RemoteDataStateInitial<T>();
  }

  _RemoteDataStateLoading<T> loading<T>() {
    return _RemoteDataStateLoading<T>();
  }

  _RemoteDataStateData<T> data<T>(T dishes) {
    return _RemoteDataStateData<T>(
      dishes,
    );
  }

  _RemoteDataStateError<T> error<T>(String? error) {
    return _RemoteDataStateError<T>(
      error,
    );
  }

  _RemoteDataStateEmpty<T> empty<T>(String? error) {
    return _RemoteDataStateEmpty<T>(
      error,
    );
  }
}

/// @nodoc
const $RemoteDataState = _$RemoteDataStateTearOff();

/// @nodoc
mixin _$RemoteDataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteDataStateCopyWith<T, $Res> {
  factory $RemoteDataStateCopyWith(
          RemoteDataState<T> value, $Res Function(RemoteDataState<T>) then) =
      _$RemoteDataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RemoteDataStateCopyWithImpl<T, $Res>
    implements $RemoteDataStateCopyWith<T, $Res> {
  _$RemoteDataStateCopyWithImpl(this._value, this._then);

  final RemoteDataState<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteDataState<T>) _then;
}

/// @nodoc
abstract class _$RemoteDataStateInitialCopyWith<T, $Res> {
  factory _$RemoteDataStateInitialCopyWith(_RemoteDataStateInitial<T> value,
          $Res Function(_RemoteDataStateInitial<T>) then) =
      __$RemoteDataStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$RemoteDataStateInitialCopyWithImpl<T, $Res>
    extends _$RemoteDataStateCopyWithImpl<T, $Res>
    implements _$RemoteDataStateInitialCopyWith<T, $Res> {
  __$RemoteDataStateInitialCopyWithImpl(_RemoteDataStateInitial<T> _value,
      $Res Function(_RemoteDataStateInitial<T>) _then)
      : super(_value, (v) => _then(v as _RemoteDataStateInitial<T>));

  @override
  _RemoteDataStateInitial<T> get _value =>
      super._value as _RemoteDataStateInitial<T>;
}

/// @nodoc

class _$_RemoteDataStateInitial<T> implements _RemoteDataStateInitial<T> {
  const _$_RemoteDataStateInitial();

  @override
  String toString() {
    return 'RemoteDataState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDataStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataStateInitial<T> implements RemoteDataState<T> {
  const factory _RemoteDataStateInitial() = _$_RemoteDataStateInitial<T>;
}

/// @nodoc
abstract class _$RemoteDataStateLoadingCopyWith<T, $Res> {
  factory _$RemoteDataStateLoadingCopyWith(_RemoteDataStateLoading<T> value,
          $Res Function(_RemoteDataStateLoading<T>) then) =
      __$RemoteDataStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$RemoteDataStateLoadingCopyWithImpl<T, $Res>
    extends _$RemoteDataStateCopyWithImpl<T, $Res>
    implements _$RemoteDataStateLoadingCopyWith<T, $Res> {
  __$RemoteDataStateLoadingCopyWithImpl(_RemoteDataStateLoading<T> _value,
      $Res Function(_RemoteDataStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _RemoteDataStateLoading<T>));

  @override
  _RemoteDataStateLoading<T> get _value =>
      super._value as _RemoteDataStateLoading<T>;
}

/// @nodoc

class _$_RemoteDataStateLoading<T> implements _RemoteDataStateLoading<T> {
  const _$_RemoteDataStateLoading();

  @override
  String toString() {
    return 'RemoteDataState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDataStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataStateLoading<T> implements RemoteDataState<T> {
  const factory _RemoteDataStateLoading() = _$_RemoteDataStateLoading<T>;
}

/// @nodoc
abstract class _$RemoteDataStateDataCopyWith<T, $Res> {
  factory _$RemoteDataStateDataCopyWith(_RemoteDataStateData<T> value,
          $Res Function(_RemoteDataStateData<T>) then) =
      __$RemoteDataStateDataCopyWithImpl<T, $Res>;
  $Res call({T dishes});
}

/// @nodoc
class __$RemoteDataStateDataCopyWithImpl<T, $Res>
    extends _$RemoteDataStateCopyWithImpl<T, $Res>
    implements _$RemoteDataStateDataCopyWith<T, $Res> {
  __$RemoteDataStateDataCopyWithImpl(_RemoteDataStateData<T> _value,
      $Res Function(_RemoteDataStateData<T>) _then)
      : super(_value, (v) => _then(v as _RemoteDataStateData<T>));

  @override
  _RemoteDataStateData<T> get _value => super._value as _RemoteDataStateData<T>;

  @override
  $Res call({
    Object? dishes = freezed,
  }) {
    return _then(_RemoteDataStateData<T>(
      dishes == freezed
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_RemoteDataStateData<T> implements _RemoteDataStateData<T> {
  const _$_RemoteDataStateData(this.dishes);

  @override
  final T dishes;

  @override
  String toString() {
    return 'RemoteDataState<$T>.data(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDataStateData<T> &&
            const DeepCollectionEquality().equals(other.dishes, dishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dishes));

  @JsonKey(ignore: true)
  @override
  _$RemoteDataStateDataCopyWith<T, _RemoteDataStateData<T>> get copyWith =>
      __$RemoteDataStateDataCopyWithImpl<T, _RemoteDataStateData<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) {
    return data(dishes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) {
    return data?.call(dishes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(dishes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataStateData<T> implements RemoteDataState<T> {
  const factory _RemoteDataStateData(T dishes) = _$_RemoteDataStateData<T>;

  T get dishes;
  @JsonKey(ignore: true)
  _$RemoteDataStateDataCopyWith<T, _RemoteDataStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteDataStateErrorCopyWith<T, $Res> {
  factory _$RemoteDataStateErrorCopyWith(_RemoteDataStateError<T> value,
          $Res Function(_RemoteDataStateError<T>) then) =
      __$RemoteDataStateErrorCopyWithImpl<T, $Res>;
  $Res call({String? error});
}

/// @nodoc
class __$RemoteDataStateErrorCopyWithImpl<T, $Res>
    extends _$RemoteDataStateCopyWithImpl<T, $Res>
    implements _$RemoteDataStateErrorCopyWith<T, $Res> {
  __$RemoteDataStateErrorCopyWithImpl(_RemoteDataStateError<T> _value,
      $Res Function(_RemoteDataStateError<T>) _then)
      : super(_value, (v) => _then(v as _RemoteDataStateError<T>));

  @override
  _RemoteDataStateError<T> get _value =>
      super._value as _RemoteDataStateError<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RemoteDataStateError<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RemoteDataStateError<T> implements _RemoteDataStateError<T> {
  const _$_RemoteDataStateError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RemoteDataState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDataStateError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$RemoteDataStateErrorCopyWith<T, _RemoteDataStateError<T>> get copyWith =>
      __$RemoteDataStateErrorCopyWithImpl<T, _RemoteDataStateError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
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
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataStateError<T> implements RemoteDataState<T> {
  const factory _RemoteDataStateError(String? error) =
      _$_RemoteDataStateError<T>;

  String? get error;
  @JsonKey(ignore: true)
  _$RemoteDataStateErrorCopyWith<T, _RemoteDataStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoteDataStateEmptyCopyWith<T, $Res> {
  factory _$RemoteDataStateEmptyCopyWith(_RemoteDataStateEmpty<T> value,
          $Res Function(_RemoteDataStateEmpty<T>) then) =
      __$RemoteDataStateEmptyCopyWithImpl<T, $Res>;
  $Res call({String? error});
}

/// @nodoc
class __$RemoteDataStateEmptyCopyWithImpl<T, $Res>
    extends _$RemoteDataStateCopyWithImpl<T, $Res>
    implements _$RemoteDataStateEmptyCopyWith<T, $Res> {
  __$RemoteDataStateEmptyCopyWithImpl(_RemoteDataStateEmpty<T> _value,
      $Res Function(_RemoteDataStateEmpty<T>) _then)
      : super(_value, (v) => _then(v as _RemoteDataStateEmpty<T>));

  @override
  _RemoteDataStateEmpty<T> get _value =>
      super._value as _RemoteDataStateEmpty<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RemoteDataStateEmpty<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RemoteDataStateEmpty<T> implements _RemoteDataStateEmpty<T> {
  const _$_RemoteDataStateEmpty(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RemoteDataState<$T>.empty(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoteDataStateEmpty<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$RemoteDataStateEmptyCopyWith<T, _RemoteDataStateEmpty<T>> get copyWith =>
      __$RemoteDataStateEmptyCopyWithImpl<T, _RemoteDataStateEmpty<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T dishes) data,
    required TResult Function(String? error) error,
    required TResult Function(String? error) empty,
  }) {
    return empty(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
  }) {
    return empty?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T dishes)? data,
    TResult Function(String? error)? error,
    TResult Function(String? error)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoteDataStateInitial<T> value) initial,
    required TResult Function(_RemoteDataStateLoading<T> value) loading,
    required TResult Function(_RemoteDataStateData<T> value) data,
    required TResult Function(_RemoteDataStateError<T> value) error,
    required TResult Function(_RemoteDataStateEmpty<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoteDataStateInitial<T> value)? initial,
    TResult Function(_RemoteDataStateLoading<T> value)? loading,
    TResult Function(_RemoteDataStateData<T> value)? data,
    TResult Function(_RemoteDataStateError<T> value)? error,
    TResult Function(_RemoteDataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _RemoteDataStateEmpty<T> implements RemoteDataState<T> {
  const factory _RemoteDataStateEmpty(String? error) =
      _$_RemoteDataStateEmpty<T>;

  String? get error;
  @JsonKey(ignore: true)
  _$RemoteDataStateEmptyCopyWith<T, _RemoteDataStateEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
