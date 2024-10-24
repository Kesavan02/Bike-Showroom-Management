import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_pro/screens/about.dart';
import 'package:mini_pro/screens/home.dart';
import 'package:mini_pro/screens/brands_overview.dart';
import 'package:mini_pro/screens/spare_parts.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: listOfWidgets[currentIndex],
      ),
      bottomNavigationBar: Container(
        height: displayWidth * .155,

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          color: listOfColors[currentIndex],
        ),
        child: ListView.builder(
          itemCount: listOfStrings.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: (){
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex ? Colors.blueAccent.withOpacity(.2) : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex ? displayWidth * .31 : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(index == currentIndex ? listOfStrings[index] : '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex ? Colors.white : Colors.black26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> listOfStrings = [
    'Home',
    'Brands',
    'Spares',
    'About',
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.bike_scooter_rounded,
    Icons.two_wheeler_rounded,
    Icons.info_rounded,
  ];

  List listOfColors = [
    Colors.grey[800],
    Colors.grey[400],
    Colors.grey[400],
    Colors.grey[400]
  ];


  List<Widget> listOfWidgets = [
    const BikeHome(),
    const BikeBrands(),
    const SpareParts(),
    const AboutBikes(),
  ];

}
