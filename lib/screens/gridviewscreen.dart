import 'package:classtest/customwidget/mybutton.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name;

  GridViewScreen({required this.name});

  List<Widget> _generateButtons(String name) {
    List<Widget> buttons = [];
    for (int i = 0; i < name.length; i++) {
      buttons.add(
        MyButton(
          letter: name[i],
        ),
      );
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: _generateButtons(name),
        ),
      ),
    );
  }
}