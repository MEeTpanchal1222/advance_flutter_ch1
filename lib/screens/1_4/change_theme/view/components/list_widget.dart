import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider.dart';

class ListTiles extends StatelessWidget {
  const ListTiles({
    super.key,
    required this.name,
    required this.icon,
    required this.isSwitchWant,
    required this.color,
  });
  final String name;
  final IconData icon;
  final bool isSwitchWant;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 35,
      contentPadding: EdgeInsets.all(10),
      // minVerticalPadding: 25,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: (isSwitchWant)
          ? Switch(
        activeColor: Colors.amberAccent,
        inactiveThumbColor: Colors.purple,
        inactiveTrackColor: Colors.purple.shade50,
        value: Provider.of<ThemeProvider>(context, listen: true)
            .isDark,
        onChanged: (value) {
          Provider.of<ThemeProvider>(context, listen: false)
              .changeTheme(value);
        },
      )
          : null,
    );
  }
}