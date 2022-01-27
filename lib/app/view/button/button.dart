import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({required this.style,required this.text,Key? key}) : super(key: key);
final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.height*0.1,
      height: MediaQuery.of(context).size.height*0.1,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: const Color(
          0x41BDBED0)),
      child: Text(text,style: style),
    );
  }
}
