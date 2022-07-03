

import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/controller/expression_controller.dart';
import 'package:provider/provider.dart';
import 'button.dart';

class ButtonView extends StatelessWidget {

  const ButtonView({required this.style,required this.text,Key? key}) : super(key: key);
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
      ExpressionController _expressionController = Provider.of<ExpressionController>(context);



    return GestureDetector(
      onTap: (){
        //debugPrint(text.hashCode.toString());
        _expressionController.addString(text);
       // ExpressionController.printTree(ExpressionController.tree);
      },
      child: Button(text: text,style: style),
    );
  }
}
