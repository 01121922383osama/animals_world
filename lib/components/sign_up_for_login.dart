import 'package:flutter/material.dart';

class SignUpForLogIn extends StatelessWidget {
  const SignUpForLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: SizedBox(
          width: 250,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text(
              'Sign Up',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
