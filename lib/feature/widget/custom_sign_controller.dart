part of '../eight_april_signup/custom_signup.dart';

final class _SignUpTextField extends StatelessWidget {
  const _SignUpTextField(
      {required this.title,
      required this.controller,
      this.obscureText = false});
  final String title;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: obscureText,
              controller: controller,
              decoration: InputDecoration(
                fillColor:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: CustomSignSizeItems.lowRadius,
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
