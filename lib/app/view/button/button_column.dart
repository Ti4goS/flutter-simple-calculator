import 'package:flutter/cupertino.dart';
import 'package:flutter_simple_calculator/app/view/button/button_view.dart';
import 'package:flutter_simple_calculator/app/widgets/app_constants.dart';

class ButtonColumn extends StatelessWidget {
  const ButtonColumn(
      {Key? key,
      required this.lastColumn,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.text5})
      : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final bool lastColumn;


  TextStyle _lastColumn(bool first) {
    if (lastColumn) {
      return LightText.sideStyle;
    } else {
      if (first) {
        return LightText.topStyle;
      } else {
        return LightText.contentStyle;
      }
    }
  }

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          ButtonView(
            text: text1,
            style: _lastColumn(true),
          ),
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height * 0.030),
          ButtonView(
            text: text2,
            style: _lastColumn(false),
          ),
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height * 0.030),
          ButtonView(
            text: text3,
            style: _lastColumn(false),
          ),
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height * 0.030),
          ButtonView(
            text: text4,
            style: _lastColumn(false),
          ),
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height * 0.030),
          ButtonView(
            text: text5,
            style: _lastColumn(false),
          ),
        ],
      );
    }
  }

