import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_10/syllabus.dart';
import 'package:flutter/gestures.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'syllabus.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class myhome1 extends StatefulWidget {
  const myhome1({Key? key}) : super(key: key);

  @override
  State<myhome1> createState() => _myhome1State();
}

class _myhome1State extends State<myhome1> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: mainpage(),
      menuScreen: menupage(),
      angle: -0.1,
      // showShadow: true,
      moveMenuScreen: true,
      duration: Duration(milliseconds: 100),
      menuBackgroundColor: Color.fromARGB(255, 14, 20, 70),

      mainScreenTapClose: true,
      menuScreenWidth: 1000,
    );
  }
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  // bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 14, 20, 60),
            leading: Icon(Icons.menu),
            pinned: true,
            surfaceTintColor: Colors.amber,
            elevation: 20,
            shadowColor: Color.fromARGB(255, 36, 47, 120),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/3.png',
                fit: BoxFit.cover,
              ),
            
              title: Text(
                "My Profile",
                style: GoogleFonts.lato(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 14, 20, 70),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 14, 20, 70),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 14, 20, 70),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Color.fromARGB(255, 14, 20, 70),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class menupage extends StatefulWidget {
  const menupage({Key? key}) : super(key: key);

  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 20, 70),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 190, 69, 69),
              radius: 66,
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Color.fromARGB(255, 14, 20, 60),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/dav.png"),

                  // NetworkImage(
                  //     'https://www.davjalandhar.com/wp-content/uploads/2022/07/logo-512x512-1.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Text(
              "DAV Student App",
              style: TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 219, 203, 33),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.note_alt_rounded,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Syllabus',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            // onTap: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (BuildContext context) {
            //                 return syllabus();
            //               },
            onTap: () {
              Navigator.pushNamed(context, 'syllabus');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.percent_rounded,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Result',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('DAV Official Website',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.archive_sharp,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Previous Years Papers',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.view_comfy_sharp,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text(
              'Courses',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Text(
              "Communicate",
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 219, 203, 33),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Share',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Help',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(
              Icons.update_sharp,
              color: Color.fromARGB(255, 190, 69, 69),
            ),
            title: Text('Updates',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
