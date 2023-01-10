import 'package:intl/intl.dart';

import 'package:adhan/adhan.dart';
import 'package:khima_ramdan/Screens/bnScreens/HomePageScreen.dart';
import 'package:khima_ramdan/Screens/bnScreens/bottomNavigationBarScreen.dart';
import 'package:khima_ramdan/Screens/lanachScreen.dart';
import 'package:khima_ramdan/Storge/shared_prefernces.dart';
import 'package:khima_ramdan/utils/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main(){
  runApp(emsakiaMain());
}
class emsakiaMain extends StatefulWidget {
  const emsakiaMain({Key? key}) : super(key: key);

  @override
  State<emsakiaMain> createState() => _emsakiaMainState();
}

class _emsakiaMainState extends State<emsakiaMain> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'ER'), //اللغة العربية
        ],
      initialRoute: '/LanachScreen',
      routes: {
        '/LanachScreen' : (context) => const LanachScreen(),
        '/BnScreen' : (context) => const BottomNavigationBarScreen(),

      }
    );
  }
}
