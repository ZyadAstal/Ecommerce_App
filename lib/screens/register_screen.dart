import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Let's create your account.",
                style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
              ),
              SizedBox(height: 28),
              CustomTextField(
                label: 'Full Name',
                hintText: 'Enter your full name',
              ),
              SizedBox(height: 18),
              CustomTextField(
                label: 'Email',
                hintText: 'Enter your email address',
              ),
              SizedBox(height: 18),
              CustomTextField(
                label: 'Password',
                hintText: 'Enter your password',
                isPassword: true,
              ),
              SizedBox(height: 18),
              CustomTextField(
                label: 'Confirm Password',
                hintText: 'Enter your password',
                isPassword: true,
              ),
              SizedBox(height: 28),
              CustomButton(
                text: 'Create Account',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/main');
                },
              ),
              SizedBox(height: 32),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
