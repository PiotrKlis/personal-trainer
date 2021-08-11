import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ErrorView {
  static void showErrorToast(String error) {
    Fluttertoast.showToast(
        msg: error,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
