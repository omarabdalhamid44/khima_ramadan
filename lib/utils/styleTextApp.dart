
import 'package:flutter/material.dart';
import 'package:khima_ramdan/utils/sizeconfig.dart';

class styleTextApp extends StatelessWidget {

  String text;
  double sizeText;
  TextAlign textAlign_;
  Color textColor;

  styleTextApp({required this.text,  this.sizeText= 18,this.textAlign_  = TextAlign.center, this.textColor= Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'geDinar', fontSize: SizeConfig.scaleHeight(sizeText),color: textColor),
      textAlign: textAlign_,


    );
  }
}
