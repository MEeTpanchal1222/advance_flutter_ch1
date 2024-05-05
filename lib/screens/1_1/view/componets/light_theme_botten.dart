import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../1_4/change_theme/provider/provider.dart';


Widget light_Theme_Button(BuildContext context) {
  return InkWell(
    onTap: () {
      Provider.of<ThemeProvider>(context,listen: false).changeTheme(false);
    },
    child: Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text('Light color', style: Theme.of(context).textTheme.titleLarge),
        ),
        SizedBox(height: 30,)
      ],
    ),
  );
}