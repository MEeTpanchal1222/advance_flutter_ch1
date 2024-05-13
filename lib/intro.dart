import 'package:advance_flutter_ch1/screens/1_4/change_theme/provider/provider.dart';
import 'package:advance_flutter_ch1/screens/1_4/change_theme/view/screen_change.dart';
import 'package:advance_flutter_ch1/screens/1_4/counter_app/provider/count_provider.dart';
import 'package:advance_flutter_ch1/screens/1_5/provider/intro_provider.dart';
import 'package:advance_flutter_ch1/screens/1_5/view/intro_1/intro_1.dart';
import 'package:advance_flutter_ch1/uitels/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => FringerProvider(),
        // ),
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
       home: Provider.of<IntroProvider>(context, listen: true).isClicked
           ? ChangeThemeScreen() : IntroScreen1(),
    );
  }
}