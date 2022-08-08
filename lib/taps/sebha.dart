import 'dart:math' as maths;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  List<String> Thikr = ['سبحان الله', 'الحمد لله', 'الله أكبر'];

  double angle = 0;
  int count = 1;

  int click = 0;

  String thikrName = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: ,
      children: [
        Center(
          child: InkWell(
            onTap: () {
              AddThikr(count);
            },
            child: Transform.rotate(
              angle: maths.pi / 100 * angle,
              child: Image.asset(
                'assets/images/masbahah.png',
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        Text(
          AppLocalizations.of(context)!.noOfTasbeh,
          style: Theme.of(context).textTheme.headline3,
        ),
        Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          height: MediaQuery.of(context).size.width * 0.17,
          width: MediaQuery.of(context).size.width * 0.15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFB7935F),
          ),
          child: Text('$click', style: Theme.of(context).textTheme.headline3),
        ),
        Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          height: MediaQuery.of(context).size.width * 0.12,
          width: MediaQuery.of(context).size.width * 0.32,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFB7935F),
          ),
          child:
              Text('$thikrName', style: Theme.of(context).textTheme.headline3),
        ),
      ],
    );
  }

  void AddThikr(index) {
    click++;
    if (click == 33) {
      thikrName = Thikr[count];
      click = 0;
      count++;
    }
    if (count == 3) {
      count = 0;
    }
    angle += 100 / 16.5;
    setState(() {});
  }
}
