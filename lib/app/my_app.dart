import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/view/home_view.dart';
import 'widgets/widgets.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home : (context)=> const HomeView(),
      },
      initialRoute: AppRoutes.home,
    );
  }
}
