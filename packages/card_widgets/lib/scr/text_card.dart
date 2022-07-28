import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
