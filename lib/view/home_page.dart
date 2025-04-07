//import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

int currentIndex = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePage> {
  // late AnimationController _animationController;
  // late Animation<double> animation;
  // late CurvedAnimation curve;

  List<Widget> iconlist = [
    Icon(Icons.home),
    Icon(Icons.home),
    Icon(Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(44),
                  borderSide: BorderSide(width: 50),
                ),
                hintText: "Technology Interviews",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              spacing: 70,
              children: [
                
                Chip(
                  label: Text('All'),
                  shape: StadiumBorder()
                ),
                Chip(
                  label: Text('All'),
                  shape: StadiumBorder()
                ),
                Chip(
                  label: Text('All'),
                  shape: StadiumBorder()
                ),
               
                Chip(
                  label: Text('All'),
                  shape: StadiumBorder()
                ),
               
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 1.0,
            children: [
              
              Container(
                width: 200,
                height: 84,
                color: Colors.amber,
                
                
              ),
              Container(
                width: 140,
                height: 84,
                color: const Color.fromARGB(255, 40, 77, 179),
                
              ),

            ],
          ),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 9, 32, 43),
        buttonBackgroundColor: Colors.orange,

        // backgroundColor:Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        animationCurve: Curves.linear,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.save, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
      ),
    );
  }
}

class Navigation_bar extends StatefulWidget {
  const Navigation_bar({super.key});

  @override
  State<Navigation_bar> createState() => _Navigation_barState();
}

class _Navigation_barState extends State<Navigation_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 9, 32, 43),
        buttonBackgroundColor: Colors.orange,

        // backgroundColor:Colors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        animationCurve: Curves.linear,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.save, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
      ),
    );
  }
}
