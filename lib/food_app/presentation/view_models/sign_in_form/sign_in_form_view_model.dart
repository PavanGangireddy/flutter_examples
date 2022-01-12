import 'package:flutter_app_pilot/core/general_providers.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/sign_in_form/sign_in_form_state.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final signInFormViewModelProvider =
    StateNotifierProvider<SignInFormViewModel, SignInFormState>((ref) {
  return SignInFormViewModel(ref.read);
});

class SignInFormViewModel extends StateNotifier<SignInFormState> {
  SignInFormViewModel(this._read) : super(SignInFormState.initial()) {}
  final _read;

  setMobileNoNonEmpty() async {
    state = state.copyWith(hasEnteredMobileNo: true);
  }

  setOtpNonEmpty() async {
    state = state.copyWith(hasEnteredOtp: true);
  }
}
