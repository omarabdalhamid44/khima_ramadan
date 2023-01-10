import 'package:khima_ramdan/utils/sizeconfig.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/material.dart';

class ContAzan extends StatelessWidget {
  String textTime;
  String textTime2;
  String textAzanName;
  bool selected = false;
  ContAzan(
      {
        required this.textTime,
        required this.textTime2,
      required this.textAzanName,

      required this.selected,

      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: selected ? SizeConfig.scaleHeight(90) : SizeConfig.scaleHeight(88),
        width: selected ? SizeConfig.scaleHeight(50) :SizeConfig.scaleHeight(60) ,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            image: DecorationImage(
              image:AssetImage('images/whiteBK.png'),
              fit: BoxFit.cover,
              colorFilter: selected ?ColorFilter.mode(Color(0xff5DBA48), BlendMode.multiply):ColorFilter.mode(Color(0xffFFFFFF), BlendMode.plus)
            ),

            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(0, 3))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            styleTextApp(
              text: textTime,
              sizeText: selected ? SizeConfig.scaleTextFont(16) :SizeConfig.scaleTextFont(13) ,
              textColor: selected ? Colors.white : Colors.black,
            ),
            styleTextApp(
              text: textTime2,
              sizeText: selected ? 16 : 13,
              textColor: selected ? Colors.white : Colors.black,
            ),
            SizedBox(height: 5),
            styleTextApp(
              text: textAzanName,
              sizeText: selected ? 13 : 10,
              textColor: selected ? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
