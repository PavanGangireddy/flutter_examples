// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dishes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DishesStateTearOff {
  const _$DishesStateTearOff();

  _DishesState call({required RemoteDataState<List<Dish>> dishes}) {
    return _DishesState(
      dishes: dishes,
    );
  }
}

/// @nodoc
const $DishesState = _$DishesStateTearOff();

/// @nodoc
mixin _$DishesState {
  RemoteDataState<List<Dish>> get dishes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DishesStateCopyWith<DishesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesStateCopyWith<$Res> {
  factory $DishesStateCopyWith(
          DishesState value, $Res Function(DishesState) then) =
      _$DishesStateCopyWithImpl<$Res>;
  $Res call({RemoteDataState<List<Dish>> dishes});

  $RemoteDataStateCopyWith<List<Dish>, $Res> get dishes;
}

/// @nodoc
class _$DishesStateCopyWithImpl<$Res> implements $DishesStateCopyWith<$Res> {
  _$DishesStateCopyWithImpl(this._value, this._then);

  final DishesState _value;
  // ignore: unused_field
  final $Res Function(DishesState) _then;

  @override
  $Res call({
    Object? dishes = freezed,
  }) {
    return _then(_value.copyWith(
      dishes: dishes == freezed
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as RemoteDataState<List<Dish>>,
    ));
  }

  @override
  $RemoteDataStateCopyWith<List<Dish>, $Res> get dishes {
    return $RemoteDataStateCopyWith<List<Dish>, $Res>(_value.dishes, (value) {
      return _then(_value.copyWith(dishes: value));
    });
  }
}

/// @nodoc
abstract class _$DishesStateCopyWith<$Res>
    implements $DishesStateCopyWith<$Res> {
  factory _$DishesStateCopyWith(
          _DishesState value, $Res Function(_DishesState) then) =
      __$DishesStateCopyWithImpl<$Res>;
  @override
  $Res call({RemoteDataState<List<Dish>> dishes});

  @override
  $RemoteDataStateCopyWith<List<Dish>, $Res> get dishes;
}

/// @nodoc
class __$DishesStateCopyWithImpl<$Res> extends _$DishesStateCopyWithImpl<$Res>
    implements _$DishesStateCopyWith<$Res> {
  __$DishesStateCopyWithImpl(
      _DishesState _value, $Res Function(_DishesState) _then)
      : super(_value, (v) => _then(v as _DishesState));

  @override
  _DishesState get _value => super._value as _DishesState;

  @override
  $Res call({
    Object? dishes = freezed,
  }) {
    return _then(_DishesState(
      dishes: dishes == freezed
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as RemoteDataState<List<Dish>>,
    ));
  }
}

/// @nodoc

class _$_DishesState implements _DishesState {
  const _$_DishesState({required this.dishes});

  @override
  final RemoteDataState<List<Dish>> dishes;

  @override
  String toString() {
    return 'DishesState(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DishesState &&
            const DeepCollectionEquality().equals(other.dishes, dishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dishes));

  @JsonKey(ignore: true)
  @override
  _$DishesStateCopyWith<_DishesState> get copyWith =>
      __$DishesStateCopyWithImpl<_DishesState>(this, _$identity);
}

abstract class _DishesState implements DishesState {
  const factory _DishesState({required RemoteDataState<List<Dish>> dishes}) =
      _$_DishesState;

  @override
  RemoteDataState<List<Dish>> get dishes;
  @override
  @JsonKey(ignore: true)
  _$DishesStateCopyWith<_DishesState> get copyWith =>
      throw _privateConstructorUsedError;
}
