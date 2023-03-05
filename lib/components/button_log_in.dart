import 'package:animals_world/screens/home_page.dart';
import 'package:flutter/material.dart';

class ButtonLogIn extends StatelessWidget {
  const ButtonLogIn({
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const  HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text(
              'Log In',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
