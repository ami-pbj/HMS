import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:badges/badges.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';


Uri gmailUrl = Uri.parse('mailto:test@example.org?subject=Greetings&body=Hello%20World');


class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  // Showing Cart Item
  int _count = 0;

  // Bottom Navigation Bar
  int _selectedIndex = 0;
  PageController pageController = PageController();


  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Appbar

      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        elevation: 1,
        backgroundColor: const Color(0xFF281b48),

        title: Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: 290,
            height: 40,
            alignment: Alignment.center,
            decoration: const BoxDecoration (
            ),
            child: TextButton(
              // frame36xLQ (103:768)
              onPressed: (){
                Navigator.pop(context);
              },
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),

              child: const Text(
                // detailsNuv (103:767)
                'Doctors Details',
                style: TextStyle (
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.325,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ]),
      ),


      // Body
      backgroundColor: const Color(0xff7f837f),
      body: ListView(

          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Recent Books Photos
                  Container(
                    // frame24yLt (103:658)
                      margin: const EdgeInsets.fromLTRB(0, 0, 2, 20),
                      alignment: Alignment.center,
                      width: 391,
                      decoration: BoxDecoration (
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: SizedBox(
                                  width: 150,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/images/flutter.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 0, bottom: 10),
                                    child: Text("Name: Dr. Flutter\nExp: 10Y\nDegree: MBBS,\nMD, Gold\nMedalist\nDept: Psychiatric",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      )
                                    ),
                                  ),
                                  Container(
                                    // frame30s2G (103:686)
                                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                                    width: 150,
                                    height: 50,

                                    child: TextButton(
                                      onPressed: () => setState(() {
                                        // _count++;
                                      }
                                      ),
                                      style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                          backgroundColor: Colors.black12,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                              side: const BorderSide(color: Colors.lightGreen)
                                          )
                                      ),
                                      child: const Center(
                                        child: Center(
                                          child: Text(
                                            'Appointment',
                                            textAlign: TextAlign.center,
                                            style: TextStyle (
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              height: 1.325,
                                              color: Color(0xfff4fc03),

                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: SizedBox(
                                  width: 150,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/images/virus.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, left: 10, right: 0, bottom: 30),
                                    child: Text("Name: Dr. Vaccine\nExp: 30Y\nDegree: MBBS\nDept: Virus",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  Container(
                                    // frame30s2G (103:686)
                                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                                    width: 150,
                                    height: 50,

                                    child: TextButton(
                                      onPressed: () => setState(() {
                                        // _count++;
                                      }
                                      ),
                                      style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                          backgroundColor: Colors.black12,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                              side: const BorderSide(color: Colors.lightGreen)
                                          )
                                      ),
                                      child: const Center(
                                        child: Center(
                                          child: Text(
                                            'Appointment',
                                            textAlign: TextAlign.center,
                                            style: TextStyle (
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              height: 1.325,
                                              color: Color(0xfff4fc03),

                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                                child: SizedBox(
                                  width: 150,
                                  height: 200,
                                  child: Image.asset(
                                    'assets/images/dart.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10, right: 0, bottom: 20),
                                    child: Text("Name: Dr. Dart\nExp: 10Y\nDegree: MBBS, MD\nDept: General\nMedicine",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  Container(
                                    // frame30s2G (103:686)
                                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                                    width: 150,
                                    height: 50,

                                    child: TextButton(
                                      onPressed: () => setState(() {
                                        // _count++;
                                      }
                                      ),
                                      style: TextButton.styleFrom (
                                          padding: EdgeInsets.zero,
                                          backgroundColor: Colors.black12,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15.0),
                                              side: const BorderSide(color: Colors.lightGreen)
                                          )
                                      ),
                                      child: const Center(
                                        child: Center(
                                          child: Text(
                                            'Appointment',
                                            textAlign: TextAlign.center,
                                            style: TextStyle (
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              height: 1.325,
                                              color: Color(0xfff4fc03),

                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ],
                      )
                  ),




                  // Appointment Section => Button
                  const Divider(height: 10, thickness: 2, color: Colors.red,),

                  Column(
                    children: [

                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                        child: Text("Contact to Management !!",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.cyanAccent,
                            )
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            // rectangleJPA (103:659)
                            alignment: Alignment.center,
                            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white24,
                            ),
                            height: 170,
                            child: SizedBox(
                              width: 200,
                              height: 170,
                              child: Image.asset(
                                'assets/images/contact.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Container(
                            // frame30s2G (103:686)
                            margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            width: 140,
                            height: 50,

                            child: TextButton(
                              onPressed: (){
                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>const DonateBooks()));
                              },
                              style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.white24,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(color: Colors.yellowAccent)
                                  )
                              ),

                              child: const Center(

                                child: Center(
                                  child: Text(
                                    "Contact",
                                    textAlign: TextAlign.center,
                                    style: TextStyle (
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      height: 1.325,
                                      color: Colors.lightGreenAccent,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
            // PageView(
            //   controller: pageController,
            // )

          ]

      ),

      // BottomNavigationBar

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business),
            label: 'Appointment',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_call),
            label: 'Emergency',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.blueGrey,
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black38,
        // iconSize: 25,
        onTap: _onItemTapped,
      ),


    );
  }
}



// Open Email App from Drawer
_launch(Uri url) async {
  await canLaunchUrl(url)
      ? await launchUrl(url)
      : ScaffoldMessenger.of(Path.context as BuildContext).showSnackBar(
      const SnackBar(
        content: Text('Could Open Email app !!'),
      ));
}
