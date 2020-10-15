import 'package:bmi_theming_complete/util/color_palette.dart';
import 'package:flutter/material.dart';

class SmallIconButton extends StatelessWidget {
  final Function onTapHandler;
  final IconData icon;

  SmallIconButton({this.icon, this.onTapHandler});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Theme.of(context).primaryColorDark,
      onTap: onTapHandler,
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).accentColor,
        ),
        child: Center(
            child: Icon(icon),
        ), 
      ),
    );
  }
}
