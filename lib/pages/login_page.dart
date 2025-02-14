import 'package:chatbox/components/my_button.dart';
import 'package:chatbox/components/my_textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  // tap to go to register page
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  // Login method
  void login() {
    print('Email: ${_emailController.text}');
    print('Password: ${_pwController.text}');
  }

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
            Text('Welcome back to ChatBox',
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

            const SizedBox(height: 20),

            // login button
            MyButton(
              text: 'Login',
              onTap: login,
            ),

            const SizedBox(height: 20),

            // register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member yet? ',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary)),
                GestureDetector(
                  onTap: onTap,
                  child: Text('Register now',
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
