import 'package:flutter/material.dart';
import 'package:food_app/offers.dart';
import 'package:food_app/profile.dart';
import 'food.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  final pages =[
    Food(),
    Home(),
    Offers(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.location_on,
            color: Colors.red,
          ),
          actions: const [
            Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            SizedBox(width: 20.0),
            Icon(
              Icons.person,
              color: Colors.red,
            ),
          ],
          title: const Text(
            'Food Mart',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: currentIndex,
          fixedColor: Colors.red,
          iconSize: 30.0,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 35),
          unselectedIconTheme: IconThemeData(size: 25),
          items: const [
            BottomNavigationBarItem(
              label: 'Food',
              icon: Icon(Icons.local_restaurant_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Offers',
              icon: Icon(
                Icons.local_offer_sharp,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

