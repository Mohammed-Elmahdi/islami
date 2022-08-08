import 'package:flutter/material.dart';
import 'package:islami_project/providers/my_provider.dart';
import 'package:islami_project/taps/ahadeth/ahadeth.dart';
import 'package:provider/provider.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = 'Ahadeth_Details';

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProviderApp>(context);
    AhadethModel model =
        ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return Stack(
      children: [
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
              '${model.title}',
              style: Theme.of(context).textTheme.headline1,
            ), //islami
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${model.content}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
