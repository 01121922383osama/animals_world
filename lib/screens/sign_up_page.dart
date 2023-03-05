import 'package:flutter/material.dart';

import '../components/my_textfield.dart';
import '../components/sign_up_for_login.dart';
import '../components/square_tile.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final repeatpasswordController = TextEditingController();

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

              const SizedBox(height: 5),
              // email textfield

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
              ),

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
              // repeatpassword textfield
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextField(
                  controller: repeatpasswordController,
                  hintText: 'Repeat Password',
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 5),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SignUpForLogIn(),
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
