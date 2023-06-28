import 'package:flutter/material.dart';
import 'package:flutter_random_app/utils/my_list_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10),
          //AppBar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Text(
                  "Settings",
                  style: TextStyle(
                      fontFamily: "Comfortaa",
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                MyListTile(
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                  tileTitle: "Notifications",
                  tileSubTitle: "Turn on || Turn off",
                ),
                MyListTile(
                  icon: Icon(
                    Icons.language,
                    size: 30,
                  ),
                  tileTitle: "Language",
                  tileSubTitle: "Change Language",
                ),
                SizedBox(height: 350),
                MyListTile(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  tileTitle: "Log out",
                  tileSubTitle: "Log out",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
