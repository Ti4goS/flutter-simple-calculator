import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String text;

  const MyButton({
    Key? key, required
     this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(

        padding: const EdgeInsets.all(20),
        child:
           Text(text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),) ,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.shade200,
                  Colors.grey.shade300,
                  Colors.grey.shade400,
                  Colors.grey.shade500,
                ],
                stops: const [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}