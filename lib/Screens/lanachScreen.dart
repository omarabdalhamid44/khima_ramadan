import 'package:khima_ramdan/Storge/shared_prefernces.dart';
import 'package:khima_ramdan/utils/sizeconfig.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/material.dart';

class LanachScreen extends StatefulWidget {
  const LanachScreen({Key? key}) : super(key: key);


  @override
  State<LanachScreen> createState() => _LanachScreenState();

}

class _LanachScreenState extends State<LanachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds:   5),(){
      Navigator.pushReplacementNamed(context, '/BnScreen');
      UserSharedPref().initalizationPrefernces();
      SizeConfig.init(context);

    });

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image(image: AssetImage('images/background.png'),fit: BoxFit.cover,)
            ),
            Positioned(
              right: 100,
              top: 350,
              child: Column(
                children: [
                  Image(image: AssetImage('images/logoRafah.png'),height: 200,width: 200),
                  SizedBox(height: 15),
                  Text(
                    'الخيمة الرمضانية',
                    style: TextStyle(
                      fontFamily: 'AbuDhabiMedia',
                      fontSize: 25,
                      color: Colors.white,

                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 80),
                  Text(
                    'تمت البرمجة بواسطة :\n م/عمرعبدالحميد \n م/محمد عابد',
                    style: TextStyle(
                      fontFamily: 'AbuDhabiMedia',
                      fontSize: 15,
                      color: Colors.white,

                    ),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
