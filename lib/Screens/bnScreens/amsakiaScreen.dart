import 'package:adhan/adhan.dart';
import 'package:khima_ramdan/utils/ContAzan.dart';
import 'package:khima_ramdan/utils/amsakia.dart';
import 'package:khima_ramdan/utils/sizeconfig.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class AmsakiaScreen extends StatefulWidget {
  const AmsakiaScreen({Key? key}) : super(key: key);

  @override
  State<AmsakiaScreen> createState() => _AmsakiaScreenState();
}

final myCoordinates = Coordinates(
    31.898043, 34.204269); // Replace with your own location lat, lng.
final params = CalculationMethod.muslim_world_league.getParameters();

class _AmsakiaScreenState extends State<AmsakiaScreen> {
  final prayerTimes = PrayerTimes.today(myCoordinates, params);

  var inp = DateFormat('hh:mm');
  var inp2 = DateFormat('a');
  var _today = HijriCalendar();
  List<int> dayH = [

    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    1,
    2,
    3,
  ];
  List<String> monthM = [
    '',
    'يناير',
    'فبراير',
    'مارس',
    'إبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتيمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر'
  ];

  @override
  void initState() {
    // TODO: implement initState
    HijriCalendar.setLocal('ar');
    _today = HijriCalendar.now();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('IS :: ${_today.hMonth}');
    print('IS 2 :: ${DateTime.now().month}');

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: SizeConfig.scaleHeight(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              styleTextApp(
                text: 'إمساكية الشهر الحالي [${_today.longMonthName}]'
                    ' عام ${_today.hYear} هـ     ',
                textAlign_: TextAlign.start,
              ),
              SizedBox(height: SizeConfig.scaleHeight(10)),
              Expanded(
                child: ListView.builder(
                  itemCount: _today.lengthOfMonth,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(
                          height: 10,
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        Container(
                            width: double.infinity,
                            height: SizeConfig.scaleHeight(100),
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.scaleHeight(10)),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        height: SizeConfig.scaleHeight(90),
                                        width: SizeConfig.scaleWidth(50),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'images/whiteBK.png'),
                                                fit: BoxFit.cover,
                                                colorFilter:
                                                    dayH.elementAt(index) + 3 ==
                                                            DateTime.now().day
                                                        ? ColorFilter.mode(
                                                            Color(0xff5DBA48),
                                                            BlendMode.multiply)
                                                        : ColorFilter.mode(
                                                            Color(0xffFFFFFF),
                                                            BlendMode.plus)),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10))),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: styleTextApp(
                                              text:
                                                  '${dayH.elementAt(index)}\n ${_today.longMonthName}',
                                              sizeText:
                                                  dayH.elementAt(index) + 3 ==
                                                          DateTime.now().day
                                                      ? 18
                                                      : 14,
                                              textColor:
                                                  dayH.elementAt(index) + 3 ==
                                                          DateTime.now().day
                                                      ? Colors.white
                                                      : Colors.black,
                                            )),
                                            SizedBox(width: 5),
                    //                         Expanded(
                    //                           child: styleTextApp(
                    //                             text: DateTime.now().month ==
                    //                                         1 ||
                    //                                     DateTime.now().month ==
                    //                                         3 ||
                    //                                     DateTime.now().month ==
                    //                                         5 ||
                    //                                     DateTime.now().month ==
                    //                                         7 ||
                    //                                     DateTime.now().month ==
                    //                                         8 ||
                    //                                     DateTime.now().month ==
                    //                                         10 ||
                    //                                     DateTime.now().month ==
                    //                                         12&&
                    //                                        _today.lengthOfMonth==30?dayH.elementAt(index+3).toString()+
                    //                                 '\n'+monthM.elementAt(DateTime.now().month)
                    //     : dayH.elementAt(index).toString()+'\n'+monthM.elementAt(
                    // DateTime.now().month+2),
                    //
                    //                             textColor:
                    //                                 dayH.elementAt(index) + 3 ==
                    //                                         DateTime.now().day
                    //                                     ? Colors.white
                    //                                     : Colors.black,
                    //                             sizeText:
                    //                                 dayH.elementAt(index) + 3 ==
                    //                                         DateTime.now().day
                    //                                     ? 18
                    //                                     : 14,
                    //                           ),
                    //                         )
                                          ],
                                        )),
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime: amsakia.elementAt(index).aleisha,
                                    textAzanName: 'صلاة العشاء',
                                    selected: false,
                                    textTime2: ' مساءاً ',
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime:
                                        amsakia.elementAt(index).almaghrib,
                                    textAzanName: 'صلاة المغرب',
                                    selected: false,
                                    textTime2: ' مساءاً ',
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime: amsakia.elementAt(index).aleasr,
                                    textAzanName: 'صلاة  العصر',
                                    selected: false,
                                    textTime2: ' مساءاً ',
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime: amsakia.elementAt(index).alzuhr,
                                    textAzanName: 'صلاة الظهر',
                                    selected: false,
                                    textTime2: 'مساءاً',
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime: amsakia.elementAt(index).alshuruq,
                                    textAzanName: 'الشروق',
                                    selected: false,
                                    textTime2: ' صباحاً ',
                                  ),
                                  SizedBox(width: 5),
                                  ContAzan(
                                    textTime: amsakia.elementAt(index).alfajr,
                                    textAzanName: 'صلاة الفجر',
                                    selected: false,
                                    textTime2: ' صباحاً ',
                                  ),
                                ],
                              ),
                            )),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// monthM
//                                 .elementAt(index).length>= 31 ?
//                             '${amsakia
//                                 .elementAt(index)
//                                 .id - 28}\n مايو ' : '${amsakia
//                                 .elementAt(index)
//                                 .id + 2}\n إبريل ' , sizeText: 14,textColor: amsakia.elementAt(index).id+2 == DateTime.now().day? Colors.white:Colors.black,)
