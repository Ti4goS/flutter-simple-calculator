import 'package:flutter/cupertino.dart';

import 'button.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({required this.style,required this.text,Key? key}) : super(key: key);
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Button(text: text,style: style),
    );
  }
}
