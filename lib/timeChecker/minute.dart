import 'package:flutter/material.dart';

class Minute extends StatelessWidget {
  final int minute;
  const Minute({Key? key, required this.minute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      minute<10?"0$minute":minute.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
