// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:bmi/Data/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class button extends StatelessWidget {
  const button({Key? key, required this.onpress, required this.blable})
      : super(key: key);
  final Function() onpress;
  final String blable;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kSlidercolor,
        ),
        child: Center(
            child: Text(
          blable,
          style: kcontainerstyle,
        )),
      ),
    );
  }
}
