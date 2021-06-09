import 'package:flutter/material.dart';

class RegisterOptionScreen extends StatelessWidget {
  const RegisterOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigoAccent[700],
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Register as",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
