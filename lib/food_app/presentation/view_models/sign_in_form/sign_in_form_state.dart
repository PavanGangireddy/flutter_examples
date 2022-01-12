import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required bool hasEnteredMobileNo,
    required bool hasEnteredOtp,
  }) = _SignInFormState;
  const SignInFormState._(); // Added constructor
  factory SignInFormState.initial() => const SignInFormState(
        hasEnteredMobileNo: false,
        hasEnteredOtp: false,
      );
}
