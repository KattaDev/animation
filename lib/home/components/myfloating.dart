import 'package:animation/servises/get_service.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return myFloatingButton();
  }

  FloatingActionButton myFloatingButton() {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      child: Icon(Icons.delete),
      onPressed: () {
        GetService.box.write("isDone", false);
      },
    );
  }
}
