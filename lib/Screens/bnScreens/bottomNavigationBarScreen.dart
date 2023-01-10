import 'package:khima_ramdan/Screens/bnScreens/HomePageScreen.dart';
import 'package:khima_ramdan/Screens/bnScreens/adviceScreen.dart';
import 'package:khima_ramdan/Screens/bnScreens/amsakiaScreen.dart';
import 'package:khima_ramdan/Screens/bnScreens/sebhaElctroincScreen.dart';
import 'package:khima_ramdan/utils/bnScreens.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  List<BnScreen> bnScreen = <BnScreen>[
   BnScreen('', HomePageScreen()),
   BnScreen('السبحة الإلكترونية', SebhaElctroincScreen()),
   BnScreen('nameBage', AmsakiaScreen()),
   BnScreen('nameBage', AdviceScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
        child: BottomNavigationBar(
        onTap: (int selectedIndex){
          setState(() {
            currentIndex = selectedIndex;
          });
        },
        currentIndex: currentIndex,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
          elevation: 0,

        selectedIconTheme: IconThemeData(color: Colors.green ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedItemColor: Colors.grey,

        selectedLabelStyle: TextStyle(
            fontFamily: 'geDinar', fontSize: 12   ),
        unselectedLabelStyle:TextStyle(
            fontFamily: 'geDinar', fontSize: 12   ) ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'الصفحة الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.fingerprint ), label: 'السبحة الإلكترونية'),
          BottomNavigationBarItem(icon: Icon(Icons.watch_sharp),label: 'امساكية الشهر'),
          BottomNavigationBarItem(icon: Icon(Icons.volunteer_activism), label:'ارشادات الصحة عامة'),
        ],),
      ),
      body: bnScreen.elementAt(currentIndex).widgetScreen,

    );

  }
}
