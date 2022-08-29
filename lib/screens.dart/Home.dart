// ignore_for_file: unrelated_type_equality_checks

import 'dart:convert';

import 'package:bmi/Data/brain.dart';
import 'package:bmi/Data/constant.dart';
import 'package:bmi/screens.dart/resultScreen.dart';
import 'package:bmi/widgets/CardData.dart';
import 'package:bmi/widgets/ReusedCard.dart';
import 'package:bmi/widgets/button.dart';
import 'package:bmi/widgets/customfloatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// enum Gender {
//   male,
//   female,
// }

enum Gender {
  male,
  female,
}
class _HomeState extends State<Home> {
  int height = 100;
  int weight = 0;
  int age = 0;
  Color maleCardColor = kInActiveColor;
  Color femaleCardColor = kInActiveColor;
  void updatecolor(Gender selectColor) {

    if (selectColor == Gender.male) {
      if (maleCardColor == kInActiveColor) {
        maleCardColor = kActiveColor;
        femaleCardColor = kInActiveColor;
      } else {
        maleCardColor = kInActiveColor;
      }
    }
      if (selectColor == Gender.female) {
      if (femaleCardColor == kInActiveColor) {
        femaleCardColor = kActiveColor;
        maleCardColor = kInActiveColor;
      } else {
        femaleCardColor = kInActiveColor;
      }
      }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: maincolor,
        title: const Text("BMI CALCULATOR"),
        titleTextStyle: apstyle,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: RusedCard(
                        colr: maleCardColor,
                        onpres: (() {
                          setState(() {
                            updatecolor(Gender.male);
                          });
                        }),
                        cardchild: const CardData(
                          icon: Icons.male_outlined,
                          txt: 'MALE',
                        ))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: RusedCard(
                  cardchild: const CardData(
                    icon: Icons.female_outlined,
                    txt: "FEMALE",
                  ),
                  colr: femaleCardColor,
                  onpres: () {
                    setState(() {
                      updatecolor(Gender.female);
                    });
                  },
                )),
              ],
            )),
            const SizedBox(
              height: 13.45,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: RusedCard(
                  colr: kActiveColor,
                  onpres: () {},
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("HEIGHT", style: kagetextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            height.toString(),
                            style: tstyle,
                          ),
                          const Text(
                            "cm",
                            style: kagetextstyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              inactiveTrackColor: kSliderInactive,
                              activeTrackColor: Colors.white,
                              thumbColor: const Color(0xffeb1555),
                              overlayColor: const Color(0x29eb1555),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 15.34),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30)),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            min: 100,
                            max: 250,
                          ))
                    ],
                  ),
                )),
              ],
            )),
            const SizedBox(
              height: 13.45,
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: RusedCard(
                        colr: kActiveColor,
                        onpres: (() {}),
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style: kagetextstyle,
                            ),
                            Text(
                              weight.toString(),
                              style: tstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ActionButton(
                                    onpress: (() {
                                      setState(() {
                                        if(weight>0){
                                        weight--;}
                                      });
                                    }),
                                    icon: Icons.remove),
                                const SizedBox(
                                  width: 10,
                                ),
                                ActionButton(
                                    onpress: (() {
                                      setState(() {
                                        weight++;
                                      });
                                    }),
                                    icon: Icons.add)
                              ],
                            ),
                          ],
                        ))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: RusedCard(
                        colr: kActiveColor,
                        onpres: () {},
                        cardchild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: kagetextstyle,
                            ),
                            Text(
                              age.toString(),
                              style: tstyle,
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ActionButton(
                                    onpress: (() {
                                      setState(() {
                                      if(age>0){ 
                                        age--;}
                                      });
                                    }),
                                    icon: Icons.remove),
                                const SizedBox(
                                  width: 10,
                                ),
                                ActionButton(
                                    onpress: (() {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                                    icon: Icons.add),
                              ],
                            ),
                          ],
                        ))),
              ],
            )),
            const SizedBox(height: 10,),
          button(onpress: (() {
          Brain bm = Brain(height, weight,);
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
            restxt: bm.bmiResult(),
            explaination: bm.expln(),
            res: bm.calculate(),),));
          }), blable:"CALCULATE")
          ],
        ),
      ),
    );
  }
}
