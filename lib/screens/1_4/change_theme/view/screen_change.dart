import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../main_screen/main_screen.dart';
import '../provider/provider.dart';
import 'components/list_widget.dart';

class ChangeThemeScreen extends StatelessWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen(),));
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 35),
          CircleAvatar(
            radius: 70,
            backgroundImage:AssetImage('assets/img.png'),
          ),
          SizedBox(
            height: 15,
          ),
          Text("MeetR Panchal"),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                ListTiles(
                  name: "Light Mode",
                  icon: Provider.of<ThemeProvider>(context, listen: true).isDark
                      ? Icons.nightlight_round
                      : Icons.sunny,
                  color: Theme.of(context).colorScheme.primary,
                  isSwitchWant: true,
                ),
                ListTiles(
                    name: "Story",
                    color: Theme.of(context).colorScheme.primary,
                    icon: Icons.grid_view,
                    isSwitchWant: false),
                ListTiles(
                    name: "Setting and Privacy",
                    icon: Icons.settings,
                    color: Theme.of(context).colorScheme.primary,
                    isSwitchWant: false),
                ListTiles(
                    name: "Help Center",
                    color: Theme.of(context).colorScheme.primary,
                    icon: Icons.chat,
                    isSwitchWant: false),
                ListTiles(
                    name: "Notification",
                    color: Theme.of(context).colorScheme.primary,
                    icon: Icons.notifications_active,
                    isSwitchWant: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}