import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ConfigToast {
  const ConfigToast._();

  static Future<bool?> information(String message) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16,
      webBgColor: "linear-gradient(to right, #000000, #000000)",
      webPosition: "center",
    );
  }

  static Future<bool?> success(String message) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
        webBgColor: "linear-gradient(to right, #000000, #000000)",
        webPosition: "center");
  }

  static Future<bool?> error(String message) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16,
        webBgColor: "linear-gradient(to right, #000000, #000000)",
        webPosition: "center");
  }
}
