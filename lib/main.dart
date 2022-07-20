import 'package:flutter/material.dart';
import 'package:islami_project/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (_) => HomeLayout(),
      },
    );
  }
}
