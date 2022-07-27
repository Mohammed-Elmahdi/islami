import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/my_theme.dart';
import 'package:islami_project/taps/ahadeth/ahadeth_item.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<AhadethModel> Allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Allahadeth.isEmpty) {
      LoadAhadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/ahadeth_main_bg.png')),
        Divider(color: MyThemeData.primaryColor, thickness: 3),
        Text(
          'Ahadeth',
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(color: MyThemeData.primaryColor, thickness: 3),
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, index) {
                return AhadethItem(Allahadeth[index]);
              },
              separatorBuilder: (_, index) {
                //line between sura names
                return Container(
                  height: 1,
                  color: MyThemeData.primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                );
              },
              itemCount: Allahadeth.length),
        )
      ],
    );
  }

  void LoadAhadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadeth = content.trim().split('#\r\n'); //list (title+content)
    //trim to remove empty line

    for (int i = 0; i < hadeth.length; i++) {
      String AllHadethText = hadeth[i]; //content 1 + title 1
      // AllHadethText.trim();
      List<String> lines = AllHadethText.split('\n'); //lines
      String title = lines[0]; //title
      lines.removeAt(0); //remove title
      AhadethModel ahadethModel = AhadethModel(title, lines);
      Allahadeth.add(ahadethModel);
    }
    setState(() {});
  }
}

class AhadethModel {
  String title;
  List<String> content;

  AhadethModel(this.title, this.content);
}
