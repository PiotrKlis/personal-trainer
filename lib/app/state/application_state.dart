import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/model/user_type.dart';

import '../../domain/model/app_user.dart';
import '../../domain/model/client.dart';
import '../../domain/model/trainer.dart';

class LoginState extends ChangeNotifier {

  void showErrorMessage(FirebaseAuthException error) {
    Fluttertoast.showToast(
        msg: error.message.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
