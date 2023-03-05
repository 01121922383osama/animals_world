import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Sign In'),
        ),
      ),
    );
  }
}
