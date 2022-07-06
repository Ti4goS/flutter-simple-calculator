import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/expression_controller.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({required this.style, required this.text, Key? key})
      : super(key: key);
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    ExpressionController _expressionController =
        Provider.of<ExpressionController>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _expressionController.addString(text);
          },
          splashColor: const Color(0x000000ff),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.height * 0.1,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0x41BDBED0)),
            child: Text(text,style: style),
          ),
        ),
      ),
    );
  }
}
