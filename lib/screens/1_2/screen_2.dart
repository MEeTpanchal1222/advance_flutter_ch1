import 'package:flutter/material.dart';

import '../../uitels/Globle_variable_list.dart';


class StepperScreen2 extends StatefulWidget {
  const StepperScreen2({super.key});

  @override
  State<StepperScreen2> createState() => _StepperScreen2State();
}

class _StepperScreen2State extends State<StepperScreen2> {
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
        type: StepperType.horizontal,
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
            TextButton(onPressed: () {}, child: Text("Cancel"))
          ],
        ),
        connectorColor: MaterialStatePropertyAll(Colors.blue),
        steps: [
          Step(
              title: Text("Personal"),
              content: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Address",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                ],
              )),
          Step(
              title: Text("Contact"),
              content: TextField(
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              )),
          Step(title: Text("Upload"), content: Container()),
        ],
      ),
    );
  }
}