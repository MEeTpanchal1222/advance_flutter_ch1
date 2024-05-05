import 'package:advance_flutter_ch1/uitels/app_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../uitels/Globle_variable_list.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateTo(Widget widget){
      Navigator.push(context, MaterialPageRoute(builder: (context) => widget,));
    }
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text(
          'Chapter one task',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
        ),
      ),
      body:  Center(
        child: ListWheelScrollView(
          itemExtent: 120,
          children: List.generate(appList.length, (index) => CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              navigateTo(appList[index].widget);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (isdark)?Colors.white:Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(appList[index].title,textAlign: TextAlign.center,),
            ),
          )),
        ),
      ),
    );
  }
}