part of '../eight_april_signup/custom_signup.dart';

class _AlreadyHaveAccount extends StatelessWidget {
  const _AlreadyHaveAccount();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: CustomSignUpKeys.alreadyHaveAccount,
            children: [
              TextSpan(
                text: CustomSignUpKeys.signIn,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
