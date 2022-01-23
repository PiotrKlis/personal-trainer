import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_trainer/data/util/const.dart';

class CalendarProvider {
  Future<Map<DateTime, bool>> getExerciseMarkerFor(
      {required DateTime dateTime, required String clientId}) async {
    try {
      var formattedDate = DateUtils.dateOnly(dateTime).toString();
      var result = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.userExercisesCollection)
          .collection(formattedDate)
          .get();
      return {dateTime: result.docs.isNotEmpty};
    } catch (error) {
      return Future.error(error);
    }
  }
}
