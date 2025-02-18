import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'B',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.local_drink,
                    size: 40,
                    color: Colors.green[300],
                  ),
                  Text(
                    'BA',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.green[300],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              CustomButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Sign up with Google',
                onPressed: () {
                  // Implement Google Sign In
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}