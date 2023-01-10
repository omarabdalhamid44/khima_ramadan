import 'package:khima_ramdan/utils/ListOfThings.dart';
import 'package:khima_ramdan/utils/styleTextApp.dart';
import 'package:flutter/material.dart';

class AdviceScreen extends StatelessWidget {
  const AdviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 30),
          child: Column(
              children: [
                styleTextApp(text: 'إرشادات السلامة العامة',sizeText: 20,),
               SizedBox(height: 20),
               Expanded(
                 child: Container(
                    child:ListView.builder(
                      itemExtent: 220,
                      itemBuilder:(context, index) {
                        return  Stack(
                          children: [
                           Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:AssetImage('images/whiteBK.png'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(Color(0xff5DBA48), BlendMode.multiply)
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff5DBA48)),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child:Center(child: styleTextApp(text: ListOfThings.ListOfAdvice.elementAt(index),textColor: Colors.white,sizeText: 15,textAlign_: TextAlign.start,))

                            ),
                          ],
                        );
                      } ,
                      itemCount: ListOfThings.ListOfAdvice.length,

                    ),
                  ),
               ),

              ],
            ),
        ),
      ),
    );
  }
}
