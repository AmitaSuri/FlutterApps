import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onPressedHandler;
  BottomButton({@required this.buttonTitle, @required this.onPressedHandler});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(15.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(
      //    color: Theme.of(context).colorScheme.secondary,
        ),
      ),
     // highlightElevation: 5.0,
     // highlightColor: kPrimaryBlueGreyDark,
      child: Text(buttonTitle),
      onPressed: onPressedHandler,
    );
  }
}
