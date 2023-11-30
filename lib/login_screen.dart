import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: const Column(
        children: [
          Center(
            child: Text("Login Screen",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.red

            ),),

          ),
        ],
      ),
    );
  }
}
