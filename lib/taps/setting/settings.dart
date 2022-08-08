import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/providers/my_provider.dart';
import 'package:islami_project/taps/setting/show_bottom_sheet_language.dart';
import 'package:islami_project/taps/setting/show_bottom_sheet_theme.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ), //language
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              ShowBottomSheetLanguage(); //function
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFB7935F),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                AppLocalizations.of(context)!.lang,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          // SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ), //language
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              ShowBottomSheetTheme(); //function
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFB7935F),
                border: Border.all(color: Colors.black),
              ),
              child: Text(
                pro.themeMode == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }

  void ShowBottomSheetLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowLanguageBottomSheet();
        });
  }

  void ShowBottomSheetTheme() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowThemeBottomSheet();
        });
  }
}
