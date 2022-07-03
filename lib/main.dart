import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/controller/expression_controller.dart';
import 'package:provider/provider.dart';

import 'app/my_app.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ExpressionController>(
            create: (_) => ExpressionController())
      ],
      child: const MyApp(),
    ));
