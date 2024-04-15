import 'package:figma_design/feature/eight_april_signup/custom_signup.dart';
import 'package:flutter/material.dart';

mixin CustomSignupMixin on State<CustomSignUp> {
  /// Custom sign up mixin for custom sign up view
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
