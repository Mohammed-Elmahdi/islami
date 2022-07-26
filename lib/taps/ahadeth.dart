import 'package:flutter/material.dart';
import 'package:islami_project/my_theme.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/ahadeth_main_bg.png')),
        Divider(color: MyThemeData.primaryColor, thickness: 3),
        Text(
          'Ahadeth',
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(color: MyThemeData.primaryColor, thickness: 3),
      ],
    );
  }
}
