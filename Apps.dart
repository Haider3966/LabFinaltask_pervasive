import 'package:flutter/material.dart';
import 'package:myportfolioapps/CalculatorScreen.dart';
import 'home_page.dart';
import 'QuizScreen.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Apps"),
        backgroundColor: Colors.greenAccent, // Set the app bar color
      ),
      body: Container(
        color: Colors.white, // Change background color
        child: ListView(
          children: [
            AppListItem(
              appName: "Quiz App",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              icon: Icons.question_answer,
              iconColor: Colors.blue, // Customize the icon color
            ),
            AppListItem(
              appName: "Weather App",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icons.cloud,
              iconColor: Colors.tealAccent, // Customize the icon color
            ),
            AppListItem(
              appName: "Calculator App",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorScreen()),
                );
              },
              icon: Icons.calculate,
              iconColor: Colors.green, // Customize the icon color
            ),
            // Add more AppListItems as needed
          ],
        ),
      ),
    );
  }
}

class AppListItem extends StatelessWidget {
  final String appName;
  final Function onTap;
  final IconData icon;
  final Color iconColor;

  const AppListItem({
    required this.appName,
    required this.onTap,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800], // Customize the card background color
      elevation: 4, // Add elevation for a subtle shadow
      margin: EdgeInsets.all(10), // Add margin for spacing
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconColor,
          child: Icon(
            icon,
            color: Colors.black, // Customize the icon color
          ),
        ),
        title: Text(
          appName,
          style: TextStyle(color: Colors.black), // Customize the text color
        ),
        onTap: () => onTap(),
      ),
    );
  }
}
