import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/controller/expression_controller.dart';
import 'package:provider/provider.dart';

class ResultView extends StatefulWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    ExpressionController _expressionController =
        Provider.of<ExpressionController>(context);

    return Container(
      alignment: Alignment.bottomRight,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(_expressionController.getExpression,
            textAlign: TextAlign.end,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 30)),
        const Text('2000',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 80)),
      ]),
    );
  }
}
