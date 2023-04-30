import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hms/doctor_list.dart';
import 'package:hms/new_patient.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



Uri gmailUrl = Uri.parse('mailto:test@example.org?subject=Greetings&body=Hello%20World');


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
            const Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),

            Text(
              "HMS",
              style: GoogleFonts.oswald(
                color: const Color(0xfff7ff00),
                textStyle: Theme.of(context).textTheme.headlineLarge,
                fontSize: 30,
                fontWeight: FontWeight.w800,
                // fontStyle: FontStyle.italic,
                letterSpacing: 5.0,
              ),
              // style: TextStyle(color: Color(0xfff7ff00), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Montserrat' ),
            ),
            const Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),

            const Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          ]),
      ),



      // Body

      backgroundColor: const Color(0xff7b857b),
      body: ListView(

          children: [

            // Heading

            Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                    width: double.infinity,
                    alignment: Alignment.center,

                    child: Text(
                      "World's first digital platform to manages hospital data in a smart way.",
                      style: GoogleFonts.lato(
                        color: const Color(0xffffffff),
                        textStyle: Theme.of(context).textTheme.headlineLarge,
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic,
                        letterSpacing: 1.0,
                      ),
                      // style: TextStyle(color: Color(0xfff7ff00), fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Montserrat' ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                    width: double.infinity,
                    alignment: Alignment.center,

                    child: Text(
                      "Admit the patient DIGITALLY\nand\nWe'll manage SMARTLY 🏥",
                      style: GoogleFonts.lato(
                        color: const Color(0xffd4fff4),
                        textStyle: Theme.of(context).textTheme.headlineSmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        // fontStyle: FontStyle.italic,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                ]),

            // Flexible(flex: 1, child:Container(color:Colors.red)),
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: NetworkImage("https://d33wubrfki0l68.cloudfront.net/b8b6d3de6f9c6aed0637f3f20d1ca3446e5d5f3a/0b8d5/assets/img/covers/hospital-management-software.webp"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: NetworkImage("https://d1j84xngq5ljxn.cloudfront.net/blog/hospital-mangement-software.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: NetworkImage("https://www.velvetech.com/wp-content/uploads/2022/05/hospital-management-system-fb.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
                options: CarouselOptions(
                  // height: 180,
                  aspectRatio: 2.5,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )

            ),





            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  // Heading 1 => Recent Books
                  Container(
                    // frame13nGQ (103:480)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: double.infinity,

                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 5.5, 0, 5.5),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                            child: const Text(
                              'New Patients',
                              style: TextStyle (
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 1.325,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.fromLTRB(9, 0, 0, 0),
                            child: TextButton(
                              onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>const NewPatients()));
                              },
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: const Text(

                                // seeallcYG (103:485)
                                'See All',
                                style: TextStyle (
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.325,
                                  color: Color(0xff6cff7b),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  // Recent Books Photos
                  Container(
                    // frame24yLt (103:658)
                      margin: const EdgeInsets.fromLTRB(0, 0, 2, 20),
                      alignment: Alignment.center,
                      width: 391,

                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(3, 0, 5, 5),
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(),
                                  color: Colors.white,
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: SizedBox(
                                  width: 120,
                                  height: 90,
                                  child: Image.asset(
                                    'assets/images/me3.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                                child: const SizedBox(
                                  width: 120,
                                  height: 100,

                                  child: Text(
                                    "Name: Purnendu\nAge: 24\nFrom: Kolkata\nFor: Insomnia",
                                    style: TextStyle (
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.325,
                                      color: Color(0xffeafaea),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame30s2G (103:686)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: 80,
                                height: 30,

                                child: TextButton(
                                  onPressed: () => setState(() {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const NewPatients()));
                                  }),
                                  style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                      backgroundColor: const Color(0x3fd6fffa),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        // side: BorderSide(color: Colors.red)
                                      )
                                  ),
                                  child: const Center(

                                    child: Center(
                                      child: Text(
                                        'Details',
                                        textAlign: TextAlign.center,
                                        style: TextStyle (
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          height: 1.325,
                                          color: Color(0xff16fae0),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(3, 0, 5, 5),
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(),
                                  color: Colors.white,
                                ),
                                child: SizedBox(
                                  width: 120,
                                  height: 90,
                                  child: Image.asset(
                                    'assets/images/me2.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                                child: const SizedBox(
                                  width: 120,
                                  height: 100,

                                  child: Text(
                                    "Name: Bikash\nAge: 73\nFrom: West Bengal\nFor: Covid-19",
                                    style: TextStyle (
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.325,
                                      color: Color(0xffeafaea),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame30s2G (103:686)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: 80,
                                height: 30,

                                child: TextButton(
                                  onPressed: () => setState(() {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const NewPatients()));
                                  }),
                                  style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                      backgroundColor: const Color(0x3fd6fffa),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        // side: BorderSide(color: Colors.red)
                                      )
                                  ),
                                  child: const Center(

                                    child: Center(
                                      child: Text(
                                        'Details',
                                        textAlign: TextAlign.center,
                                        style: TextStyle (
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          height: 1.325,
                                          color: Color(0xff16fae0),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                          Column(
                            children: [
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(3, 0, 3, 5),
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(),
                                  color: Colors.white,
                                ),
                                child: SizedBox(
                                  width: 120,
                                  height: 90,
                                  child: Image.asset(
                                    'assets/images/me1.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Container(
                                // rectangleJPA (103:659)
                                alignment: Alignment.center,
                                padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                                child: const SizedBox(
                                  width: 120,
                                  height: 100,

                                  child: Text(
                                    "Name: Jana\nAge: 2473\nFrom: Kolkata, West Bengal\nFor: Cold & Fever",
                                    style: TextStyle (
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height: 1.325,
                                      color: Color(0xffeafaea),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // frame30s2G (103:686)
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: 80,
                                height: 30,

                                child: TextButton(
                                  onPressed: () => setState(() {
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const NewPatients()));
                                  }),
                                  style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                      backgroundColor: const Color(0x3fd6fffa),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        // side: BorderSide(color: Colors.red)
                                      )
                                  ),
                                  child: const Center(

                                    child: Center(
                                      child: Text(
                                        'Details',
                                        textAlign: TextAlign.center,
                                        style: TextStyle (
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          height: 1.325,
                                          color: Color(0xff16fae0),

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ],
                      )
                  ),




                  // Heading 2 => Literary Genres
                  Container(
                    // frame14EXi (103:483)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 5.5, 0, 5.5),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                              child: const Text(
                                'Best Doctors',
                                style: TextStyle (
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 1.325,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.fromLTRB(11, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const DoctorList()));
                                },
                              style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                              ),
                              child: const Text(
                                // seeallcYG (103:485)
                                'See all',
                                style: TextStyle (
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.325,
                                  color: Color(0xff6cff7b),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Medical Types Photo
                  Container(
                    // frame27MVr (103:662)
                    margin: const EdgeInsets.fromLTRB(56.5, 0, 56.5, 8),
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse3GMv (103:489)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/neurology.png',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          // ellipse4ATJ (103:490)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/cardiology.png',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          // ellipse5664 (103:492)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/ophthalmology.png',
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                      ],
                    ),
                  ),


                  // Book Types
                  Container(
                    // autogroupwqr62dv (2QYJcMY58pBxt3RV7UWQR6)
                    margin: const EdgeInsets.only(top: 5, left: 30, bottom: 30),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // yellowcabZ84 (103:510)
                          margin: const EdgeInsets.fromLTRB(30, 0, 5, 0),
                          child: const Text(
                            'Neurology',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // taxiH44 (103:512)
                          margin: const EdgeInsets.fromLTRB(22, 0, 5, 0),
                          child: const Text(
                            'Cardiology',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),

                        Container(
                          // sedanzz4 (103:511)
                          margin: const EdgeInsets.fromLTRB(9, 0, 5, 0),
                          child: const Text(
                            'Ophthalmology',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  // Medical Types Photo
                  Container(
                    // frame27MVr (103:662)
                    margin: const EdgeInsets.fromLTRB(56.5, 0, 56.5, 8),
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse3GMv (103:489)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/hematology.png',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          // ellipse4ATJ (103:490)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/orthopedics.png',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          // ellipse5664 (103:492)
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/images/gynaecology.png',
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   width: 20,
                        // ),
                      ],
                    ),
                  ),


                  // Book Types
                  Container(
                    // autogroupwqr62dv (2QYJcMY58pBxt3RV7UWQR6)
                    margin: const EdgeInsets.only(top: 5, left: 30, bottom: 30),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // yellowcabZ84 (103:510)
                          margin: const EdgeInsets.fromLTRB(26, 0, 5, 0),
                          child: const Text(
                            'Hematology',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // taxiH44 (103:512)
                          margin: const EdgeInsets.fromLTRB(11, 0, 5, 0),
                          child: const Text(
                            'Orthopedics',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),

                        Container(
                          // sedanzz4 (103:511)
                          margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                          child: const Text(
                            'Gynaecology',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.325,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  // Seller Section => Button

                  Container(
                    // frame30s2G (103:686)
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: 391,
                    height: 47,

                    child: TextButton(
                      onPressed: () => setState(() {
                        _count--;
                      }),
                      style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                          backgroundColor: const Color(0xffffb1b1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            // side: BorderSide(color: Colors.red)
                          )
                      ),
                      child: const Center(

                        child: Center(
                          child: Text(
                            'Admit Patient - Emergency !!',
                            textAlign: TextAlign.center,
                            style: TextStyle (
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.325,
                              color: Color(0xffd70000),

                            ),
                          ),
                        ),
                      ),
                    ),
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


      // Drawer

      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xff060026),
          //other styles
        ),

        child: Drawer(
          elevation: 20.0,
          // backgroundColor: Color(0xFF032730),
          child: Column(

            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text("21MCA2473"),
                accountEmail: const Text("PURNENDU BIKASH JANA"),

                decoration: const BoxDecoration(
                  color: Color(0xff4a326e),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/me.png'),
                ),
              ),

              const ListTile(
                title: Text("Profile", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: Icon(Icons.account_circle_outlined,color: Colors.white,),
              ),

              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
              const ListTile(
                title: Text("Appointment", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: Icon(Icons.add_circle_outline,color: Colors.white,),
              ),

              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
              const ListTile(
                title: Text("Your Wallet", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
              ),

              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
              ListTile(
                  title: const Text("Send Email", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                  leading: const Icon(Icons.contact_mail_outlined,color: Colors.white,),

                  onTap: () {
                    _launch(gmailUrl);
                  }
              ),
              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
              ListTile(
                title: const Text("Connect Us", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: const Icon(Icons.people_outline, color: Colors.white,),
                onTap: () => {launch("https://www.linkedin.com/in/ami-pbj/")},
              ),
              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
              ListTile(
                title: const Text("About Us", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                leading: const Icon(Icons.details_rounded, color: Colors.white,),
                onTap: () => {launch("https://www.linkedin.com/in/ami-pbj/")},
              ),
              const Divider( height: 0.1, color: Color(0xffa9a9a9),),
            ],
          ),
        ),
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

