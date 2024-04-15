import 'package:flutter/material.dart';

@immutable

/// Custom sign up keys
final class CustomSignUpKeys {
  CustomSignUpKeys._();

  /// Key for the header title
  static const headerTitle = "Let's get sign up!";
  static const headerSubtitle = 'Create an account to get all features';

  /// Controllers
  static const nameControllerTitle = 'Name';
  static const emailControllerTitle = 'Email';
  static const passwordControllerTitle = 'Password';

  /// Buttons
  static const signUpButtonTitle = 'Sign Up';

  // Checkbox
  static const checkboxTitle = 'I agree to the terms and conditions';

  //Text.rich
  static const alreadyHaveAccount = 'Already have an account?';
  static const signIn = 'Sign In';
}
