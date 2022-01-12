import 'package:flutter_app_pilot/core/general_providers.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/auth/auth_state.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  return AuthViewModel(ref.read);
});

class AuthViewModel extends StateNotifier<AuthState> {
  AuthViewModel(this._read) : super(AuthState.initial()) {
    init();
  }
  final _read;

  setAuthenticated() async {
    await _read(localStorageProvider).saveAccessToken("random");
    state = AuthState.authenticated();
  }

  init() async {
    final accessToken = await _read(localStorageProvider).getAccessToken();
    if (accessToken != null) {
      state = AuthState.authenticated();
    } else {
      state = AuthState.unauthenticated();
    }
  }
}
