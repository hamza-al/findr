import 'package:findr/pages/messagesPage.dart';
import 'package:findr/pages/profile.dart';
import 'package:findr/pages/welcome.dart';
import 'package:findr/styles.dart';
import 'package:findr/widgets/customCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var titles = [
  "Messages",
  'Home',
  'Profile',
];
List<Widget> pages = [
  MessagesPage(),
  Center(
      child: Stack(
    children: [
      Center(
        child: Text(
          "Oops, it looks like you've applied\n to all the jobs LOL",
          style: GoogleFonts.poppins(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),
        ),
      ),
      Center(child: Tinder()),
    ],
  )),
  ProfilePage(),
];

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _index = 1;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _auth.signOut();
          Navigator.pushNamedAndRemoveUntil(
              context, 'welcome', (route) => false);
        },
      ),
      appBar: AppBar(
        leading: Container(),
        title: Text(
          titles[_index],
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: bg,
      ),
      backgroundColor: bg,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bg,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: accentOne,
        unselectedItemColor: bg,
        selectedIconTheme: const IconThemeData(color: accentOne),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelStyle:
            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w900),
        unselectedLabelStyle:
            GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w900),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '.',
          ),
        ],
      ),
      body: pages[_index],
    );
  }
}
