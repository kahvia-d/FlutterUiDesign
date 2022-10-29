import 'package:flutter/material.dart';

class Hour extends StatelessWidget {
  final int hour;
  const Hour({Key? key, required this.hour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      hour.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
