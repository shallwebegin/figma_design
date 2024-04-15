import 'package:figma_design/feature/eight_april_signup/custom_signup_keys.dart';
import 'package:figma_design/feature/eight_april_signup/custom_signup_mixin.dart';
import 'package:figma_design/feature/eight_april_signup/custom_signup_padding.dart';
import 'package:figma_design/feature/widget/custom_sign_size_items.dart';
import 'package:flutter/material.dart';
part '../widget/custom_sign_header_title.dart';
part '../widget/custom_sign_controller.dart';
part '../widget/custom_sign_button.dart';
part '../widget/custom_signup_checkbox.dart';
part '../widget/custom_sign_already.dart';

class CustomSignUp extends StatefulWidget {
  const CustomSignUp({super.key});

  @override
  State<CustomSignUp> createState() => _CustomSignUpState();
}

class _CustomSignUpState extends State<CustomSignUp> with CustomSignupMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: const [0, 0.1, 0.9, 1.0],
              colors: [Colors.green, Colors.white, Colors.white, Colors.orange],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const BackButton(),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: CustomSignUpPadding.medium.paddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _HeaderTitle(),
                  _SignUpTextField(
                    controller: nameController,
                    title: CustomSignUpKeys.nameControllerTitle,
                  ),
                  _SignUpTextField(
                    controller: emailController,
                    title: CustomSignUpKeys.emailControllerTitle,
                  ),
                  _SignUpTextField(
                    controller: passwordController,
                    title: CustomSignUpKeys.passwordControllerTitle,
                    obscureText: true,
                  ),
                  const _CustomSignCheckbox(),
                  const _CustomSignUpButton(),
                  const _AlreadyHaveAccount(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
