import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/view/button/button_view.dart';

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
          Flexible(
              child: Container(
            decoration: const BoxDecoration(color: Colors.white),
          )),
          Flexible(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                decoration: const BoxDecoration(
                    color: Color(0xFFDFDEDE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: const ButtonView(),
              )),
        ],
      ),
    );
  }
}
