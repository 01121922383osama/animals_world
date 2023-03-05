import 'package:flutter/material.dart';

import '../screens/sign_up_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: const Text('Sign Up'),
        ),
      ),
    );
  }
}
