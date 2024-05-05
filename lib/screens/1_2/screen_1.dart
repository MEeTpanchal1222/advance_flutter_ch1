
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../uitels/Globle_variable_list.dart';



class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text(
          "Flutter Stepper Demo",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        centerTitle: true,
      ),
      body: Stepper(
        currentStep: GlobalVariables.stepperIndex,
        onStepContinue: () {},
        onStepTapped: (value) {
          setState(() {
            GlobalVariables.stepperIndex = value;
          });
        },
        controlsBuilder: (context, details) => Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (GlobalVariables.stepperIndex < 2) {
                    GlobalVariables.stepperIndex++;
                  }
                  else
                    {

                    }
                });
              },
              child: Container(
                height: 45,
                width: 120,
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  "Continue",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            TextButton(onPressed: () {

            }, child: Text("Cancel"))
          ],
        ),
        connectorColor: MaterialStatePropertyAll(Colors.blue),
        steps: [
          Step(
              title: Text("Account"),
              content: TextField(
                decoration: InputDecoration(hintText: "Email"),
              )),
          Step(
              title: Text("Address"),
              content: TextField(
                decoration: InputDecoration(hintText: "Address"),
              )),
          Step(
              title: Text("Mobile Number"),
              content: TextField(
                decoration: InputDecoration(hintText: "Mobile Number"),
              )),
        ],
      ),
    );
  }
}