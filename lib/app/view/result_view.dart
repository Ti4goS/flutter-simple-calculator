import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const[
        Text('2000',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 80)),
          ]),
    );
  }
}
