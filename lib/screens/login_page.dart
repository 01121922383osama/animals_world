import 'package:animals_world/components/button_sign_up.dart';
import 'package:flutter/material.dart';

import '../components/button_log_in.dart';
import '../components/button_sign_in.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true, // <-- add this property
            children: [
              const SizedBox(height: 50),

              // logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/petss.png',
                  width: 150,
                  height: 150,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SignIn(),
                  SignUp(),
                ],
              ),

              const SizedBox(height: 25),

              // username textfield
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
              ),

              const SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
              ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ButtonLogIn(),
              ),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // face button
                  SquareTile(imagePath: 'assets/face.png'),
                  SizedBox(width: 25),
                  // google button

                  Padding(
                    padding: EdgeInsets.all(2),
                    child: SquareTile(imagePath: 'assets/google.png'),
                  ),
                ],
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
