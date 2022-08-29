import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({Key? key, required this.onpress, required this.icon}) : super(key: key);
final Function() onpress;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: onpress,
    backgroundColor: Colors.transparent,
    child:Icon(
      icon,
      color: Colors.white,
    ),
    );
  }
}