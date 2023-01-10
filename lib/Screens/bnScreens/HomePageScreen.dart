
import 'package:adhan/adhan.dart';
import 'package:khima_ramdan/utils/ContAzan.dart';
import 'package:khima_ramdan/utils/ListOfThings.dart';
import 'package:khima_ramdan/utils/sizeconfig.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

final myCoordinates = Coordinates(
    31.898043, 34.204269); // Replace with your own location lat, lng.
final params = CalculationMethod.muslim_world_league.getParameters();

class _HomePageScreenState extends State<HomePageScreen> {
  var inp = DateFormat('hh:mm');
  var inp3 = DateFormat('MM/dd/yyyy');
  var inp2 = DateFormat('a');
  final prayerTimes = PrayerTimes.today(myCoordinates, params);
  var _today = HijriCalendar();

  @override
  void initState() {
    // TODO: implement initState
    HijriCalendar.setLocal('ar');
    _today = HijriCalendar.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: SizeConfig.scaleHeight(150),
                        clipBehavior: Clip.antiAlias,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/whiteBK.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff5DBA48), BlendMode.multiply)),
                          border: Border.all(width: 1, color: Color(0xff727E72)),
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff5DBA48),
                        ),
                      ),
                      Visibility(
                        visible: DateTime.now().day+DateTime.now().month ==05+1,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                            border: Border.all(width: 0.5, color: Color(0xff727E72)),

                          ),
                          child: styleTextApp(text: 'يصادف اليوم عيد العمال 01 /05 /2022',textColor: Colors.black,),
                        ),
                      ),
                      Positioned(
                        top: SizeConfig.scaleHeight(15),
                        right: 0,
                        left: 0,
                        bottom: SizeConfig.scaleHeight(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            containarDayDitails(
                                widgetChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                styleTextApp(
                                    text: '${_today.hDay} ' +
                                        ' ${_today.longMonthName}',
                                    sizeText: 18),
                                styleTextApp(
                                  text: '${_today.hYear}  هـ ',
                                  sizeText: 20,
                                ),
                              ],
                            )),
                            containarDayDitails(
                                widgetChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                styleTextApp(
                                  text: 'الوقت الآن',
                                  sizeText: 16,
                                ),
                                styleTextApp(
                                  text: inp.format(DateTime.now()),
                                  sizeText: 16,
                                ),
                                styleTextApp(
                                  text: inp2.format(DateTime.now()) == 'AM'
                                      ? ' صباحاً '
                                      : ' مساءاً ',
                                  sizeText: 16,
                                )
                              ],
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  styleTextApp(
                      text: '    إمساكية اليوم الحالي ',
                      sizeText: 18,
                      textAlign_: TextAlign.start),
                  SizedBox(height: 15),
                  Container(
                      width: double.infinity,
                      height: SizeConfig.scaleHeight(100),
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            ContAzan(
                                textTime:
                                    inp.format(prayerTimes.isha).toString(),
                                textAzanName: 'صلاة العشاء',
                                selected: inp.format(DateTime.now()) ==
                                        inp.format(prayerTimes.isha) &&
                                    inp2.format(DateTime.now()) == 'PM',
                            textTime2: ' مساءاً ',
                            ),
                            SizedBox(width: 5),
                            ContAzan(
                              textTime:
                                  inp.format(prayerTimes.maghrib).toString(),
                              textAzanName: 'صلاة المغرب',
                              selected: inp.format(DateTime.now()) ==
                                      inp.format(prayerTimes.maghrib) &&
                                  inp2.format(DateTime.now()) == 'PM',
                              textTime2: ' مساءاً ',
                            ),
                            SizedBox(width: 5),
                            ContAzan(
                              textTime: inp.format(prayerTimes.asr).toString(),
                              textAzanName: 'صلاة  العصر',
                              selected: inp.format(DateTime.now()) ==
                                      inp.format(prayerTimes.asr) &&
                                  inp2.format(DateTime.now()) == 'PM',
                              textTime2: ' مساءاً ',
                            ),
                            SizedBox(width: 5),
                            ContAzan(
                                textTime:   inp.format(prayerTimes.dhuhr).toString(),
                              textAzanName: 'صلاة الظهر',
                              selected: inp.format(DateTime.now()) ==
                                      inp.format(prayerTimes.dhuhr) &&
                                  inp2.format(DateTime.now()) == 'AM',
textTime2:  inp2.format(prayerTimes.dhuhr)=='PM' ? 'مساءاً' :'صباحاً',
                            ),
                            SizedBox(width: 5),
                            ContAzan(
                              textTime:
                                  inp.format(prayerTimes.sunrise).toString() ,
                              textAzanName: 'الشروق',
                              selected: inp.format(DateTime.now()) ==
                                      inp.format(prayerTimes.maghrib) &&
                                  inp2.format(DateTime.now()) == 'AM',
                              textTime2: ' صباحاً ',
                            ),
                            SizedBox(width: 5),
                            ContAzan(
                              textTime: inp.format(prayerTimes.fajr).toString(),
                              textAzanName: 'صلاةالفجر',
                              selected: inp.format(DateTime.now()) ==
                                      inp.format(prayerTimes.maghrib) &&
                                  inp2.format(DateTime.now()) == 'AM',
                              textTime2: ' صباحاً ',
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 10),
                  styleTextApp(text: '   الذكر اليومي '),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    width: double.infinity,
                    height: SizeConfig.scaleHeight(150),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/whiteBK.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color(0xff5DBA48), BlendMode.multiply)),
                      border: Border.all(width: 1, color: Color(0xff727E72)),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff5DBA48),
                    ),
                    child: Center(
                        child: styleTextApp(
                      text: ListOfThings.ListOfZeker.elementAt(DateTime.now().day),
                      textColor: Colors.white,
                      sizeText: 16,
                    )),
                  ),
                  SizedBox(height: 10),
                  styleTextApp(
                    text:
                        ' إرشادات  من كتاب الأمن والسلامة مقدمة من وزارة العمل ',
                    sizeText: 14,
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: SizeConfig.scaleHeight(200),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/whiteBK.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color(0xff5DBA48), BlendMode.multiply)),
                      border: Border.all(width: 1, color: Color(0xff727E72)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: styleTextApp(text: ListOfThings.ListOfAdvice.elementAt(DateTime.now().day),textColor: Colors.white,sizeText: 15,textAlign_: TextAlign.start,))
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Container containarDayDitails(
      {required Widget widgetChild,
      double widthCon = 88,
      double heightCon = 88,
      double radius = 20,
      double padding_ = 0}) {
    return Container(
      margin: EdgeInsets.all(padding_),
      width: widthCon,
      height: heightCon,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0xff727E72)),
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
      ),
      child: Center(child: widgetChild),
    );
  }
}
