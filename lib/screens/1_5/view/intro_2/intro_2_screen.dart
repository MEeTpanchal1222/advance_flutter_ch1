import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../uitels/theme.dart';
import '../intro_3/intro_3_screen.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffffe5de),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                height: 400,
                width: 400,
                child: Image.asset(
                  'assets/2inro.png',fit: BoxFit.contain,
                )),
            SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    " Stay organized \n      With team ",
                    style: GlobalTheme.lighttheme.textTheme.bodyLarge
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 380,
                  child: Text(
                    "But understanding the contributions \n our colleogues make to our teams \n and companies",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(
                  height: 105,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:BorderRadius.circular(20)
                        ),
                      ),
                      Container(
                        height: 15,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                          onPressed: () {},
                          child: Text("Skip",style: GlobalTheme.lighttheme.textTheme.bodyMedium,)),
                      Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 16,
                                  color: Colors.black38,
                                  spreadRadius: -4,
                                  offset: Offset(0, 15)
                              )
                            ]
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => IntroScreen3(),
                            ));
                          },
                          child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 22),),

                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}