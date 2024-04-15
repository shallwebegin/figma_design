part of '../eight_april_signup/custom_signup.dart';

class _CustomSignCheckbox extends StatelessWidget {
  const _CustomSignCheckbox();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: true,
            activeColor: Colors.green,
            onChanged: (value) {},
          ),
          Text(
            CustomSignUpKeys.checkboxTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
