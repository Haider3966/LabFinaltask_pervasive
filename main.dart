import 'package:flutter/material.dart';
import 'package:myportfolioapps/Apps.dart';

import 'package:myportfolioapps/Experiences.dart';
import 'package:myportfolioapps/About.dart';

import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        hintColor: Colors.white,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Changed the length to 5 for the five tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.blue),
                text: 'About',
              ),

              Tab(
                icon: Icon(Icons.work, color: Colors.blue),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.apps_outage_outlined, color: Colors.blue),
                text: 'Apps',
              ),

            ],
          ),
        ),

        body: const TabBarView(
          children: [
            About(),

            Experiences(),
            Apps(),

          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}


