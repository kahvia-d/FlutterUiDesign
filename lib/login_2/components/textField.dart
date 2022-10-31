import 'package:flutter/material.dart';

class WritingArea extends StatelessWidget {
  final Icon icon;
  final bool obscure;
  const WritingArea({Key? key, required this.icon, required this.obscure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          icon: icon,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
