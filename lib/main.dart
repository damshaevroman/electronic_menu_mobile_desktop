import 'package:flutter/material.dart';
import 'package:flutter_quiz/adaptive_design/desktop.dart';
import 'package:flutter_quiz/adaptive_design/mobile.dart';
import 'package:flutter_quiz/todo/models/widgets/provider_dat.dart';
import 'package:provider/provider.dart';

import 'adaptive_design/adaptive_layaout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProvderData(),
      child: MaterialApp(
        title: 'Task Provider',
        theme: ThemeData(
            // primarySwatch: Color.fromARGB(255, 103, 224, 22),
            // accentColor: Colors.redAccent,
            ),
        //  home: HomePage(),
        home: AdaptiveLayout(
          desktopBody: desktop(),
          mobileBody: Mobile(),
        ),
      ),
    );
  }
}
