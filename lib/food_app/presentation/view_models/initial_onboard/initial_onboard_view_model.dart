import 'package:flutter_app_pilot/core/general_providers.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/initial_onboard/initial_onboard_state.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final initialOnboardViewModelProvider =
    StateNotifierProvider<InitialOnboardViewModel, InitialOnboardState>((ref) {
  return InitialOnboardViewModel(ref.read);
});

class InitialOnboardViewModel extends StateNotifier<InitialOnboardState> {
  InitialOnboardViewModel(this._read) : super(InitialOnboardState.initial()) {
    init();
  }
  final _read;

  setInitialOnboardingAcknowledged() async {
    final saveOnboardingAcknowledged =
        await _read(localStorageProvider).saveOnboardingAcknowledged;
    state = InitialOnboardState.acknowledged();
    saveOnboardingAcknowledged();
  }

  init() async {
    final result = await _read(localStorageProvider).isOnboardingAcknowledged();
    if (result == true) {
      state = InitialOnboardState.acknowledged();
    } else {
      state = InitialOnboardState.notAcknowledged();
    }
  }
}
