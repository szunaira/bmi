import 'package:bmi/Data/constant.dart';
import 'package:bmi/widgets/ReusedCard.dart';
import 'package:bmi/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key,
      required this.restxt,
      required this.explaination,
      required this.res})
      : super(key: key);
  final String restxt;
  final String explaination;
  final String res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text("BMI CALCULATOR"),
        titleTextStyle: apstyle,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding:const EdgeInsets.only(left: 20,right: 20,bottom: 30),
        child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
                  padding: const EdgeInsets.all(11.0),
                  alignment: Alignment.bottomLeft,
                child: const Text(
                  "Your Result",
                  style: txtstyle,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),

            Expanded(
              flex: 5,
                child: RusedCard(
                    colr: kActiveColor,
                    onpres: (() {}),
                    cardchild: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            restxt.toUpperCase(),
                            style: resstyle,
                          ),
                          Text(
                            res,
                            style: tstyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              explaination,
                              style: kstyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    button(onpress: () {
                      Navigator.pop(context);
                    }, blable: "RE_CALCULATE"),
          ],
        ),
      ),
    );
  }
}
