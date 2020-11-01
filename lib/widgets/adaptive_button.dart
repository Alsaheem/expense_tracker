import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function datePicker;
  AdaptiveButton(this.text, this.datePicker);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Platform.isIOS
          ? CupertinoButton(
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: datePicker)
          : FlatButton(
              textColor: Theme.of(context).primaryColor,
              onPressed: datePicker,
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
