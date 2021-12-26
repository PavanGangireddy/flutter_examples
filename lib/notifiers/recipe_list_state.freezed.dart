// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecipeListStateTearOff {
  const _$RecipeListStateTearOff();

  _RecipeListStateInitial initial() {
    return const _RecipeListStateInitial();
  }

  _RecipeListStateLoading loading() {
    return const _RecipeListStateLoading();
  }

  _RecipeListStateData data(List<APIRecipe> recipes) {
    return _RecipeListStateData(
      recipes,
    );
  }

  _RecipeListStateError error(String? error) {
    return _RecipeListStateError(
      error,
    );
  }
}

/// @nodoc
const $RecipeListState = _$RecipeListStateTearOff();

/// @nodoc
mixin _$RecipeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<APIRecipe> recipes) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeListStateInitial value) initial,
    required TResult Function(_RecipeListStateLoading value) loading,
    required TResult Function(_RecipeListStateData value) data,
    required TResult Function(_RecipeListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeListStateCopyWith<$Res> {
  factory $RecipeListStateCopyWith(
          RecipeListState value, $Res Function(RecipeListState) then) =
      _$RecipeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeListStateCopyWithImpl<$Res>
    implements $RecipeListStateCopyWith<$Res> {
  _$RecipeListStateCopyWithImpl(this._value, this._then);

  final RecipeListState _value;
  // ignore: unused_field
  final $Res Function(RecipeListState) _then;
}

/// @nodoc
abstract class _$RecipeListStateInitialCopyWith<$Res> {
  factory _$RecipeListStateInitialCopyWith(_RecipeListStateInitial value,
          $Res Function(_RecipeListStateInitial) then) =
      __$RecipeListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$RecipeListStateInitialCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res>
    implements _$RecipeListStateInitialCopyWith<$Res> {
  __$RecipeListStateInitialCopyWithImpl(_RecipeListStateInitial _value,
      $Res Function(_RecipeListStateInitial) _then)
      : super(_value, (v) => _then(v as _RecipeListStateInitial));

  @override
  _RecipeListStateInitial get _value => super._value as _RecipeListStateInitial;
}

/// @nodoc

class _$_RecipeListStateInitial implements _RecipeListStateInitial {
  const _$_RecipeListStateInitial();

  @override
  String toString() {
    return 'RecipeListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RecipeListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<APIRecipe> recipes) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(_RecipeListStateInitial value) initial,
    required TResult Function(_RecipeListStateLoading value) loading,
    required TResult Function(_RecipeListStateData value) data,
    required TResult Function(_RecipeListStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecipeListStateInitial implements RecipeListState {
  const factory _RecipeListStateInitial() = _$_RecipeListStateInitial;
}

/// @nodoc
abstract class _$RecipeListStateLoadingCopyWith<$Res> {
  factory _$RecipeListStateLoadingCopyWith(_RecipeListStateLoading value,
          $Res Function(_RecipeListStateLoading) then) =
      __$RecipeListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$RecipeListStateLoadingCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res>
    implements _$RecipeListStateLoadingCopyWith<$Res> {
  __$RecipeListStateLoadingCopyWithImpl(_RecipeListStateLoading _value,
      $Res Function(_RecipeListStateLoading) _then)
      : super(_value, (v) => _then(v as _RecipeListStateLoading));

  @override
  _RecipeListStateLoading get _value => super._value as _RecipeListStateLoading;
}

/// @nodoc

class _$_RecipeListStateLoading implements _RecipeListStateLoading {
  const _$_RecipeListStateLoading();

  @override
  String toString() {
    return 'RecipeListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RecipeListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<APIRecipe> recipes) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(_RecipeListStateInitial value) initial,
    required TResult Function(_RecipeListStateLoading value) loading,
    required TResult Function(_RecipeListStateData value) data,
    required TResult Function(_RecipeListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RecipeListStateLoading implements RecipeListState {
  const factory _RecipeListStateLoading() = _$_RecipeListStateLoading;
}

/// @nodoc
abstract class _$RecipeListStateDataCopyWith<$Res> {
  factory _$RecipeListStateDataCopyWith(_RecipeListStateData value,
          $Res Function(_RecipeListStateData) then) =
      __$RecipeListStateDataCopyWithImpl<$Res>;
  $Res call({List<APIRecipe> recipes});
}

/// @nodoc
class __$RecipeListStateDataCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res>
    implements _$RecipeListStateDataCopyWith<$Res> {
  __$RecipeListStateDataCopyWithImpl(
      _RecipeListStateData _value, $Res Function(_RecipeListStateData) _then)
      : super(_value, (v) => _then(v as _RecipeListStateData));

  @override
  _RecipeListStateData get _value => super._value as _RecipeListStateData;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_RecipeListStateData(
      recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<APIRecipe>,
    ));
  }
}

/// @nodoc

class _$_RecipeListStateData implements _RecipeListStateData {
  const _$_RecipeListStateData(this.recipes);

  @override
  final List<APIRecipe> recipes;

  @override
  String toString() {
    return 'RecipeListState.data(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeListStateData &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$RecipeListStateDataCopyWith<_RecipeListStateData> get copyWith =>
      __$RecipeListStateDataCopyWithImpl<_RecipeListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<APIRecipe> recipes) data,
    required TResult Function(String? error) error,
  }) {
    return data(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeListStateInitial value) initial,
    required TResult Function(_RecipeListStateLoading value) loading,
    required TResult Function(_RecipeListStateData value) data,
    required TResult Function(_RecipeListStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _RecipeListStateData implements RecipeListState {
  const factory _RecipeListStateData(List<APIRecipe> recipes) =
      _$_RecipeListStateData;

  List<APIRecipe> get recipes;
  @JsonKey(ignore: true)
  _$RecipeListStateDataCopyWith<_RecipeListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecipeListStateErrorCopyWith<$Res> {
  factory _$RecipeListStateErrorCopyWith(_RecipeListStateError value,
          $Res Function(_RecipeListStateError) then) =
      __$RecipeListStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$RecipeListStateErrorCopyWithImpl<$Res>
    extends _$RecipeListStateCopyWithImpl<$Res>
    implements _$RecipeListStateErrorCopyWith<$Res> {
  __$RecipeListStateErrorCopyWithImpl(
      _RecipeListStateError _value, $Res Function(_RecipeListStateError) _then)
      : super(_value, (v) => _then(v as _RecipeListStateError));

  @override
  _RecipeListStateError get _value => super._value as _RecipeListStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RecipeListStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RecipeListStateError implements _RecipeListStateError {
  const _$_RecipeListStateError(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'RecipeListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecipeListStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$RecipeListStateErrorCopyWith<_RecipeListStateError> get copyWith =>
      __$RecipeListStateErrorCopyWithImpl<_RecipeListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<APIRecipe> recipes) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<APIRecipe> recipes)? data,
    TResult Function(String? error)? error,
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
    required TResult Function(_RecipeListStateInitial value) initial,
    required TResult Function(_RecipeListStateLoading value) loading,
    required TResult Function(_RecipeListStateData value) data,
    required TResult Function(_RecipeListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeListStateInitial value)? initial,
    TResult Function(_RecipeListStateLoading value)? loading,
    TResult Function(_RecipeListStateData value)? data,
    TResult Function(_RecipeListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RecipeListStateError implements RecipeListState {
  const factory _RecipeListStateError(String? error) = _$_RecipeListStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$RecipeListStateErrorCopyWith<_RecipeListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
