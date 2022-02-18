import 'package:flutter/material.dart';
import 'package:personal_trainer/data/util/const.dart';

ScaffoldFeatureController customSnackBar(
    {required BuildContext context,
    required String text,
    int visibilityTime = DurationConst.snackbarVisibilityDuration}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(milliseconds: visibilityTime), content: Text(text)));
}
