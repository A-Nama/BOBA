import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'B',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.local_drink,
                    size: 32,
                    color: Colors.green[300],
                  ),
                  Text(
                    'BA',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  filled: true,
                  fillColor: Colors.green[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.green[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Implement forgot password
                    },
                    child: const Text('Forgot Password?'),
                  ),
                  CustomButton(
                    text: 'Next',
                    width: 100,
                    onPressed: () {
                      // Implement sign in logic
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}