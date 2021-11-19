import 'package:flutter/material.dart';
import 'package:personal_trainer/app/util/dimens.dart';

class ErrorView {
  static Widget error(String message) {
    return Center(
        child: Padding(padding: EdgeInsets.all(Dimens.normalPadding), child: Text(message)));
  }
}
