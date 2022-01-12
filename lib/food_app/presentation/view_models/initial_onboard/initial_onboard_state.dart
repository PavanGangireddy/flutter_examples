import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_onboard_state.freezed.dart';

@freezed
class InitialOnboardState with _$InitialOnboardState {
  const factory InitialOnboardState.initial() = Initial;
  const factory InitialOnboardState.acknowledged() = Acknowledged;
  const factory InitialOnboardState.notAcknowledged() = NotAcknowledged;
}
