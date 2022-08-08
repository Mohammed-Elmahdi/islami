import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/sura_details/sura_details_item.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  //return text (sora names) and navigate to sora details
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    //argument in navigator to inter in sora details
    var pro = Provider.of<MyProviderApp>(context);
    var SuraDetailsArgs = //argument in class QuranSuraItem (name,index)
        ModalRoute.of(context)!.settings.arguments as SuraDetailsModel;
    if (verses.isEmpty) {
      loadFile(SuraDetailsArgs.index);
    } // because of await and async

    return Stack(children: [
      Image.asset(
        pro.getBackground(),
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ), //main background
      Scaffold(
        backgroundColor: Colors.transparent, //to make it the same background
        //to change background to main image
        appBar: AppBar(
          title: Text(
            '${SuraDetailsArgs.name}',
            style: Theme.of(context).textTheme.headline1,
          ), //islami
        ),
        body: verses.length == 0
            ? //condition
        Center(child: CircularProgressIndicator())
            : ListView.builder(
          //:else
          itemBuilder: (_, index) {
            return SuraDetailsItem(verses[index].toString());
          },
          itemCount: verses.length,
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = [];
    lines.add(content);
    print(lines);
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsModel {
  String name;
  int index;

  SuraDetailsModel(this.name, this.index);
}
