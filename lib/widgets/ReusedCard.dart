import 'package:flutter/material.dart';

class RusedCard extends StatelessWidget {
  const RusedCard({Key? key, required this.colr, required this.onpres, required this.cardchild}) : super(key: key);
final Color colr;
final Function() onpres;
final Widget cardchild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpres ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.12),
          color: colr,
        ),
        child: cardchild,
      ),
    );
    
  }
}