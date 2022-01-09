import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'request_state.freezed.dart';

class RequestStateNotifier<T> extends StateNotifier<RequestState<T>> {
  RequestStateNotifier() : super(const RequestState.idle());

  //It returns a Future with state if you want to avoid ProviderListener
  Future<RequestState<T>> makeRequest(Future<T> Function() function) async {
    try {
      state = RequestState<T>.loading();
      final response = await function();
      final newState = RequestState<T>.success(response);
      if (mounted) {
        state = newState;
      }
      return newState;
    } catch (e, st) {
      final newState = RequestState<T>.error(e);
      if (mounted) {
        state = newState;
      }
      return newState;
    }
  }
}

extension RequestStateGetters on RequestState {
  bool get isSuccess => this is Success;
}

@freezed
abstract class RequestState<T> with _$RequestState<T> {
  const factory RequestState.idle() = Idle<T>;

  const factory RequestState.loading() = Loading<T>;

  const factory RequestState.success(T? value) = Success<T>;

  const factory RequestState.error(
    Object error,
  ) = Error<T>;
}
