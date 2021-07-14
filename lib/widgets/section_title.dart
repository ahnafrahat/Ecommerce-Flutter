import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String titleText;
  SectionTitle(this.titleText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          titleText,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
