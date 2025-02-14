import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textField.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  // tap to go to register page
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  // Register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(Icons.message,
                size: 100, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 20),

            // welcome message
            Text('Let\'s create an account for you',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16)),

            const SizedBox(height: 20),

            // email textfield
            MyTextField(
              hintText: 'Email...',
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 10),

            // pw textfield
            MyTextField(
              hintText: 'password...',
              obscureText: true,
              controller: _pwController,
            ),
            const SizedBox(height: 10),

            // cfpw textfield
            MyTextField(
              hintText: 'password...',
              obscureText: true,
              controller: _confirmPwController,
            ),

            const SizedBox(height: 20),

            // login button
            MyButton(
              text: 'Register',
              onTap: register,
            ),

            const SizedBox(height: 20),

            // register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                GestureDetector(
                  onTap: onTap,
                  child: Text('Login now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
