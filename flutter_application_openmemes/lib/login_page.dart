import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x15170D),
      body: Column(children: [
        const Spacer(),
        const Text(
          "Iniciar Sesión",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextFormField(),
        const Spacer(),
        SizedBox(
          height: 60,
          width: 120,
          child: InkWell(),
        ),
      ],)
    );
  }
}