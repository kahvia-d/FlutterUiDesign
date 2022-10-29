import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool am;
  const AmPm({Key? key, required this.am}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      am?"AM":"PM",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
