import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String letter;

  const MyButton({super.key, required this.letter});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _isVisible = false;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          widget.letter,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}