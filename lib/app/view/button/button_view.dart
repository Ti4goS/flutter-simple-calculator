import 'package:flutter/cupertino.dart';
import 'package:flutter_simple_calculator/app/view/button/button_changer.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(children: [
        const SizedBox(width: 10),
        Column(
          children: const [
            ButtonPress(text: 'AC'),
            ButtonPress(text: '7'),
            ButtonPress(text: '4'),
            ButtonPress(text: '1'),
            ButtonPress(text: ''),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: const [
            ButtonPress(text: '+/-'),
            ButtonPress(text: '8'),
            ButtonPress(text: '5'),
            ButtonPress(text: '2'),
            ButtonPress(text: '0'),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: const [
            ButtonPress(text: '%'),
            ButtonPress(text: '9'),
            ButtonPress(text: '6'),
            ButtonPress(text: '3'),
            ButtonPress(text: '.'),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          children: const [
            ButtonPress(text: '/'),
            ButtonPress(text: 'X'),
            ButtonPress(text: '-'),
            ButtonPress(text: '+'),
            ButtonPress(text: '='),
          ],
        )
      ]),
    );
  }
}
