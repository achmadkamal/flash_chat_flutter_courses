import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.colourButton, this.titleButton, @required this.pressButton});
  final Color colourButton;
  final String titleButton;
  final Function pressButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colourButton,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: pressButton,
          // onPressed: () {
          //   //Go to login screen.
          //   Navigator.pushNamed(context, LoginScreen.id);
          // },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            titleButton,
          ),
        ),
      ),
    );
  }
}
