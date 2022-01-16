import 'package:findr/pages/messagesPage.dart';
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
      const Center(
        child: Text(
          'Bro cmon now',
          style: TextStyle(color: Colors.white),
        ),
      ),
      Center(child: Tinder()),
    ],
  )),
  Container(),
];

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _index = 0;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    print(_auth.currentUser!.email);
    return Scaffold(
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
        unselectedFontSize: 0,
        selectedItemColor: accentOne,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: accentOne),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedLabelStyle:
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
