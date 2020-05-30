import 'package:flutter/material.dart';
import './colors.dart';

FlatButton FlatBtn(String text,onPressed) {
  return FlatButton(
    onPressed:onPressed,
    child: Text(text),
    textColor: white,
    color: Colors.blueAccent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}

OutlineButton OutlineBtn(String text, onPressed) {
  return OutlineButton(
    onPressed: onPressed,
    child: Text(text),
    textColor: Colors.blueAccent,
    highlightedBorderColor: highlightColor,
    borderSide: BorderSide(color: Colors.blueAccent),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
