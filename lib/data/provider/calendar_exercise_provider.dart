import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/user_exercise_mapper.dart';
import 'package:personal_trainer/domain/model/user_exercise.dart';

class CalendarExerciseProvider {
  final _userExerciseMapper = GetIt.I.get<UserExerciseMapper>();

  Future<List<UserExercise>> getExercisesFor(
      {required DateTime selectedDay, required String clientId}) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDay).toString();
      var userExercisesResult = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.userExercisesCollection)
          .collection(formattedDate)
          .get();

      var userExercises =
          Future.wait(userExercisesResult.docs.map((userExercise) async {
        var exercise = await FirebaseFirestore.instance
            .collection(FirebaseConstants.usersCollection)
            .doc(clientId)
            .collection(FirebaseConstants.clientCollection)
            .doc(FirebaseConstants.userExercisesCollection)
            .collection(formattedDate)
            .doc(userExercise.id)
            .collection(FirebaseConstants.exerciseCollection)
            .get();

        return _userExerciseMapper.map(
            userData: userExercise.data(),
            exerciseData: exercise.docs.first.data());
      }).toList());
      var test = await userExercises;
      test.sort((a, b) => a.index.compareTo(b.index));
      return Future.value(test);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future updateSetsNumberForExercise(
      {required String clientId,
      required int setsNumber,
      required DateTime selectedDate,
      required String userExerciseId}) {
    try {
      String formattedDate = DateUtils.dateOnly(selectedDate).toString();
      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.userExercisesCollection)
          .collection(formattedDate)
          .doc(userExerciseId)
          .update({FirebaseConstants.setsField: setsNumber});
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future updateRepsNumberForExercise(
      {required String clientId,
      required int repsNumber,
      required DateTime selectedDate,
      required String userExerciseId}) {
    try {
      String formattedDate = DateUtils.dateOnly(selectedDate).toString();
      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.userExercisesCollection)
          .collection(formattedDate)
          .doc(userExerciseId)
          .update({FirebaseConstants.repsField: repsNumber});
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future deleteExercise(
      {required String userExerciseId,
      required String clientId,
      required DateTime selectedDate}) async {
    try {
      String formattedDate = DateUtils.dateOnly(selectedDate).toString();
      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.userExercisesCollection)
          .collection(formattedDate)
          .doc(userExerciseId)
          .delete();
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future reorderExercises() async {}

  Future updateIndex(
      {required DateTime selectedDate,
      required String clientId,
      required String userExerciseId,
      required int index}) async {
    String formattedDate = DateUtils.dateOnly(selectedDate).toString();
    FirebaseFirestore.instance
        .collection(FirebaseConstants.usersCollection)
        .doc(clientId)
        .collection(FirebaseConstants.clientCollection)
        .doc(FirebaseConstants.userExercisesCollection)
        .collection(formattedDate)
        .doc(userExerciseId)
        .update({FirebaseConstants.indexField: index});
  }
}
