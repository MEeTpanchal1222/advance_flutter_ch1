import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componets/dark_theme_botten.dart';
import 'componets/dark_theme_text.dart';
import 'componets/light_theme_botten.dart';


class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 150),
        child: Container(
          height: 500,
          width: 350,
          alignment: Alignment.center,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //THEME TEXT
                theme_Change_Text(),

                //LIGHT THEME TEXT BUTTON
                light_Theme_Button(context),

                //DARK THEME TEXT BUTTON
                dark_Theme_Button(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
