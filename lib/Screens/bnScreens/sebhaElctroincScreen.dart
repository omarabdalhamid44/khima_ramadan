import 'package:khima_ramdan/Storge/shared_prefernces.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaElctroincScreen extends StatefulWidget {
  const SebhaElctroincScreen({Key? key}) : super(key: key);

  @override
  State<SebhaElctroincScreen> createState() => _SebhaElctroincScreenState();
}

class _SebhaElctroincScreenState extends State<SebhaElctroincScreen> {
  int _counter = 0;
  late int _counter1,
      _counter2,
      _counter3,
      _counter4,
      _counter5,
      _counter6,
      _counter7,
      _counter8,
      _counter9,
      _counter10,
      _counter11,
      _counter12,
      _counter13,
      _counter14,
      _counter15;
  late PageController _pageController;
  int _pageCount = 0;
  int _index = 0;

  // List of tasbih <--
  List<String> tasbeh = <String>[
    ' سُبْحَانَ اللَّهِ',
    'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
    'سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ',
    'سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ',
    'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ',
    'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ',
    'لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ',
    ' الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ',
    '  الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد',
    ' أستغفر الله',
    ' سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ',
    'لَا إِلَهَ إِلَّا اللَّهُ',
    'الْلَّهُ أَكْبَرُ',
    ' سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي.',
    ' الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ.',
    '  اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.',
  ];

// -->

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    _counter = UserSharedPref().pref.getInt('counter') ?? 0;
    _counter1 = UserSharedPref().pref.getInt('counter1') ?? 0;
    _counter2 = UserSharedPref().pref.getInt('counter2') ?? 0;
    _counter3 = UserSharedPref().pref.getInt('counter3') ??0;
    _counter4 = UserSharedPref().pref.getInt('counter4') ?? 0;
    _counter5 = UserSharedPref().pref.getInt('counter5') ?? 0;
    _counter6 = UserSharedPref().pref.getInt('counter6') ?? 0;
    _counter7 = UserSharedPref().pref.getInt('counter7') ?? 0;
    _counter8 = UserSharedPref().pref.getInt('counter8') ?? 0;
    _counter9 = UserSharedPref().pref.getInt('counter9') ?? 0;
    _counter10 = UserSharedPref().pref.getInt('counter10') ?? 0;
    _counter11 = UserSharedPref().pref.getInt('counter11') ?? 0;
    _counter12 = UserSharedPref().pref.getInt('counter12') ??0;
    _counter13 = UserSharedPref().pref.getInt('counter13') ?? 0;
    _counter14 = UserSharedPref().pref.getInt('counter14') ??0;
    _counter15 = UserSharedPref().pref.getInt('counter15') ??0;
    _index = UserSharedPref().pref.getInt('pagecount') ?? 0;
    print(_pageCount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Color(0xff5DBA48),
        body: Stack(
          children: [
            Container(
                  width: double.infinity,
                  height:  double.infinity,
            child: Image(
                image:AssetImage('images/background.png'),
                fit: BoxFit.fill,
            )),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                      child: styleTextApp(
                    text: 'المسبحة الإلكترونية',
                    textColor: Colors.white,
                    sizeText: 30,
                  )),
                  SizedBox(height: 60),
                  Stack(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: PageView.builder(
                              itemCount: tasbeh.length,
                              itemBuilder: (context, index) {
                                return Center(
                                    child: styleTextApp(
                                  text: tasbeh.elementAt(_index),
                                  sizeText: 20,
                                ));
                              },
                              controller: _pageController,
                              onPageChanged: (value) {
                                setState(() {
                                  _pageCount = value;
                                  _index = _pageCount;
                                  UserSharedPref().pref.setInt('pagecount', _index);
                                });
                              })),
                      Visibility(
                        visible: _pageCount != 0,
                        child: Positioned(
                          top: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: Duration(microseconds: 15),
                                  curve: Curves.easeIn);
                              setState(() {
                                UserSharedPref().pref.setInt('pagecount', _index);
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                                styleTextApp(text: 'السابق'),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 200,
                              minimumSize: Size(10, 20),
                              shadowColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _pageCount != tasbeh.length - 1,
                        child: Positioned(
                          top: 150,
                          left: 5,
                          child: ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: Duration(microseconds: 5),
                                  curve: Curves.easeIn);
                              setState(() {
                                UserSharedPref().pref.setInt('pagecount', _index);
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                styleTextApp(text: 'التالي'),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              elevation: 200,
                              minimumSize: Size(10, 20),
                              shadowColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              switch (_index) {
                                case 0:
                                  _counter = 0;
                                  UserSharedPref().pref.setInt('counter', _counter);
                                  break;
                                case 1:
                                  _counter1 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter1', _counter1);
                                  break;
                                case 2:
                                  _counter2 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter2', _counter2);
                                  break;
                                case 3:
                                  _counter3 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter3', _counter3);
                                  break;
                                case 4:
                                  _counter4 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter4', _counter4);
                                  break;
                                case 5:
                                  _counter5 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter5', _counter5);
                                  break;
                                case 6:
                                  _counter6 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter6', _counter6);
                                  break;
                                case 7:
                                  _counter7 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter7', _counter7);
                                  break;
                                case 8:
                                  _counter8 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter8', _counter8);
                                  break;
                                case 9:
                                  _counter9 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter9', _counter9);
                                  break;
                                case 10:
                                  _counter10 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter10', _counter10);
                                  break;
                                case 11:
                                  _counter11 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter11', _counter11);
                                  break;
                                case 12:
                                  _counter12 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter12', _counter12);
                                  break;
                                case 13:
                                  _counter13 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter13', _counter13);
                                  break;
                                case 14:
                                  _counter14 = 0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter14', _counter14);
                                  break;
                                case 15:
                                  _counter15=0;
                                  UserSharedPref()
                                      .pref
                                      .setInt('counter15', _counter15);
                                  break;
                                default:
                                  break;
                              }
                            });
                          },
                          icon: Icon(Icons.refresh),
                          iconSize: 55,
                        ),
                      ),
                      Container(
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                switch (_index) {
                                  case 0:
                                    _counter++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter', _counter);
                                    break;
                                  case 1:
                                    _counter1++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter1', _counter1);
                                    break;
                                  case 2:
                                    _counter2++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter2', _counter2);
                                    break;
                                  case 3:
                                    _counter3++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter3', _counter3);
                                    break;
                                  case 4:
                                    _counter4++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter4', _counter4);
                                    break;
                                  case 5:
                                    _counter5++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter5', _counter5);
                                    break;
                                  case 6:
                                    _counter6++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter6', _counter6);
                                    break;
                                  case 7:
                                    _counter7++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter7', _counter7);
                                    break;
                                  case 8:
                                    _counter8++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter8', _counter8);
                                    break;
                                  case 9:
                                    _counter9++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter9', _counter9);
                                    break;
                                  case 10:
                                    _counter10++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter10', _counter10);
                                    break;
                                  case 11:
                                    _counter11++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter11', _counter11);
                                    break;
                                  case 12:
                                    _counter12++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter12', _counter12);
                                    break;
                                  case 13:
                                    _counter13++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter13', _counter13);
                                    break;
                                  case 14:
                                    _counter14++;
                                    UserSharedPref()
                                        .pref
                                        .setInt('counter14', _counter14);
                                    break;
                                  case 15:
                                      _counter15++;
                                      UserSharedPref()
                                          .pref
                                          .setInt('counter15', _counter15);
                                      break;
                                  // default:
                                  //   break;
                                }
                              });
                            },
                            icon: Icon(Icons.fingerprint),
                            iconSize: 55,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      styleTextApp(
                        text: 'بدأ من جديد',
                        sizeText: 20,
                        textColor: Colors.white,
                      ),
                      styleTextApp(
                        text: 'تسبيح',
                        sizeText: 20,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 230,
                          height: 47,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          left: 50,
                          top: 5,
                          child: styleTextApp(
                            text: _index == 0
                                ? _counter.toString()
                                : _index == 1
                                    ? _counter1.toString()
                                    : _index == 2
                                        ? _counter2.toString()
                                        : _index == 3
                                            ? _counter3.toString()
                                            : _index == 4
                                                ? _counter4.toString()
                                                : _index == 5
                                                    ? _counter5.toString()
                                                    : _index == 6
                                                        ? _counter6.toString()
                                                        : _index == 7
                                                            ? _counter7.toString()
                                                            : _index == 8
                                                                ? _counter8
                                                                    .toString()
                                                                : _index == 9
                                                                    ? _counter9
                                                                        .toString()
                                                                    : _index ==
                                                                            10
                                                                        ? _counter10
                                                                            .toString()
                                                                        : _index ==
                                                                                11
                                                                            ? _counter11
                                                                                .toString()
                                                                            : _index ==
                                                                                    12
                                                                                ? _counter12.toString()
                                                                                : _index == 13
                                                                                    ? _counter13.toString()
                                                                                    : _index == 14
                                                                                        ? _counter14.toString()
                                                                                        : _counter15.toString(),
                            textColor: Colors.green,
                            sizeText: 25,
                            textAlign_: TextAlign.center,
                          ),
                        ),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 130,
                          height: 47,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.black),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: styleTextApp(
                              text: 'العداد :',
                              sizeText: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
