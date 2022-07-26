import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String suraName;

  SuraDetailsItem(this.suraName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(suraName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2),
    );
  }
}
