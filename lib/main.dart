import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_random_app/pages/home_page.dart';
import 'package:flutter_random_app/pages/profile_page.dart';
import 'package:flutter_random_app/pages/settings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Pages(),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const SettingsPage();
        break;
      case 1:
        page = const HomePage();
        break;
      case 2:
        page = const ProfilePage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightBlue.shade50,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.easeInOut,
        index: 1,
        onTap: (value) => setState(() => selectedIndex = value),
        items: [
          Icon(
            Icons.settings_rounded,
            color: Colors.pinkAccent.shade100,
            size: 32,
          ),
          Icon(
            Icons.home_rounded,
            color: Colors.pinkAccent.shade100,
            size: 32,
          ),
          Icon(
            Icons.person_rounded,
            color: Colors.pinkAccent.shade100,
            size: 32,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.lightBlue.shade50,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: page,
      ),
    );
  }
}
