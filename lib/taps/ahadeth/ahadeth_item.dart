import 'package:flutter/material.dart';
import 'package:islami_project/taps/ahadeth/ahadeth.dart';

class AhadethItem extends StatelessWidget {
  AhadethModel ahadethModel;

  AhadethItem(this.ahadethModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.pushNamed(context, SuraDetailsScreen.routeName,
      //       arguments: SuraDetailsModel(name, index)
      //     //(suraName,fileName)
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '${ahadethModel.title}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
