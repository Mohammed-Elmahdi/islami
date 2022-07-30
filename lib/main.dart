import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      // locale:Locale('en') , //language default
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
