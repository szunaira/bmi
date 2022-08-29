import 'package:bmi/Data/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class CardData extends StatelessWidget {
  const CardData({Key? key, required this.icon, required this.txt}) : super(key: key);
final IconData icon;
final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            Icon(
              icon,
              size: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(txt,style: kagetextstyle,),
      ],
    );
    
  }
}