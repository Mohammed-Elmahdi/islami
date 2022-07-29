import 'package:flutter/material.dart';
import 'package:islami_project/home_layout.dart';
import 'package:islami_project/my_theme.dart';
import 'package:islami_project/sura_details/sura_details_screen.dart';
import 'package:islami_project/taps/ahadeth/ahadeth_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (_) => HomeLayout(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(), //sora details
        AhadethDetails.routeName: (_) => AhadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      //creat class MyThemeData
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
