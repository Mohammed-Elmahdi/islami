import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/providers/my_provider.dart';
import 'package:islami_project/taps/ahadeth/ahadeth.dart';
import 'package:islami_project/taps/quran/quran.dart';
import 'package:islami_project/taps/radio.dart';
import 'package:islami_project/taps/sebha.dart';
import 'package:islami_project/taps/setting/settings.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProviderApp>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ), //main background
        Scaffold(
          backgroundColor: Colors.transparent, //to make it the same background
          //to change background to main image
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islamiTitle,
              style: Theme.of(context).textTheme.headline1,
            ), //islami
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              // to change color
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                  label: AppLocalizations.of(context)!.ahadeth,
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.tsbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ), //bottom navigation bar
          body: tabs[currentIndex], //change it by tabs index
        ),
      ],
    );
  }

  List<Widget> tabs = [
    //body
    QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingScreen()
  ];
}
