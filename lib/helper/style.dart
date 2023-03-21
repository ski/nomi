import 'package:flutter/material.dart';

const appColor = Color(0xFF0095F6);

headText() {
  return TextStyle(fontSize: 16, fontFamily: 'semi-bold');
}

appButton() {
  return ElevatedButton.styleFrom(
    primary: appColor,
    onPrimary: Colors.white,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
