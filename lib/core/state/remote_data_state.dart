import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_data_state.freezed.dart';

///Extension Method for easy comparison
extension DishesGetters on RemoteDataState {
  bool get isLoading => this is _RemoteDataStateLoading;
}

@freezed
class RemoteDataState<T> with _$RemoteDataState {
  ///Initial
  const factory RemoteDataState.initial() = _RemoteDataStateInitial;

  ///Loading
  const factory RemoteDataState.loading() = _RemoteDataStateLoading;

  ///Data
  const factory RemoteDataState.data(T dishes) = _RemoteDataStateData;

  ///Error
  const factory RemoteDataState.error(String? error) = _RemoteDataStateError;

  ///Empty
  const factory RemoteDataState.empty(String? error) = _RemoteDataStateEmpty;
}
