
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/view/button/off_tapped.dart';
import 'package:flutter_simple_calculator/app/view/button/on_tapped.dart';

class ButtonPress extends StatefulWidget {
  const ButtonPress({Key? key, required this.text}) : super(key: key);
  final String text;
  static bool ontap = false;

  @override
  State<ButtonPress> createState() => _ButtonPressState();
}

class _ButtonPressState extends State<ButtonPress> {
  void _changeTap(){
    setState(() {
      ButtonPress.ontap = !ButtonPress.ontap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _changeTap();
        //faz a função aqui

      },
      child: ButtonPress.ontap?ButtonTapped(text: widget.text):MyButton(text: widget.text),
    );
  }
}
