part of '../eight_april_signup/custom_signup.dart';

final class _HeaderTitle extends StatelessWidget {
  const _HeaderTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CustomSignUpKeys.headerTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: Text(
              CustomSignUpKeys.headerSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
