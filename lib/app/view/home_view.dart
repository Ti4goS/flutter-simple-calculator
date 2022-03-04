import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/view/button/button_column.dart';
import 'package:flutter_simple_calculator/app/view/result_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.light_mode),
              onPressed: () {},
            ),
          ),
          Flexible(
              child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.1),
            decoration: const BoxDecoration(color: Colors.white),
            child: const ResultView(),
          )),
          Flexible(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.025,
                    left: MediaQuery.of(context).size.width * 0.025,
                    right: MediaQuery.of(context).size.width * 0.025),
                decoration: const BoxDecoration(
                    color: Color(0xFFDFDEDE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ButtonColumn(
                      text1: 'AC',
                      text2: '7',
                      text3: '4',
                      text4: '1',
                      text5: 'C',
                      lastColumn: false,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    const ButtonColumn(
                      text1: '+/-',
                      text2: '8',
                      text3: '5',
                      text4: '2',
                      text5: '0',
                      lastColumn: false,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    const ButtonColumn(
                      text1: '%',
                      text2: '9',
                      text3: '6',
                      text4: '3',
                      text5: '.',
                      lastColumn: false,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    const ButtonColumn(
                      text1: '÷',
                      text2: 'X',
                      text3: '-',
                      text4: '+',
                      text5: '=',
                      lastColumn: true,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
