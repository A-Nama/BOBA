import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
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
                'Create your profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Implement image picker
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green[100],
                  child: const Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField('Username'),
              _buildTextField('Email'),
              _buildTextField('Password', isPassword: true),
              _buildTextField('Bio'),
              _buildTextField('Preferences'),
              _buildTextField('Status: active / hibernate'),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Next',
                onPressed: () {
                  // Implement sign up logic
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.green[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}