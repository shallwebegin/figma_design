part of '../eight_april_signup/custom_signup.dart';

class _CustomSignUpButton extends StatelessWidget {
  const _CustomSignUpButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, elevation: 0),
      onPressed: () {},
      child: InkWell(
        child: SizedBox(
          height: CustomSignSizeItems.normalbuttonHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: CustomSignSizeItems.lowRadius,
              gradient: _ButtonGradient(),
            ),
            child: Center(
              child: Text(
                CustomSignUpKeys.signUpButtonTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.background),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _ButtonGradient extends LinearGradient {
  _ButtonGradient()
      : super(
          colors: [Colors.green, Colors.blue, Colors.purple, Colors.pink],
        );
}
