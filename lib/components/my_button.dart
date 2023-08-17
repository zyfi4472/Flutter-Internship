import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // final Function()? onTap;
  final Function()? signIn;

  const MyButton({super.key, required this.signIn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: signIn,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Background color
          padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
