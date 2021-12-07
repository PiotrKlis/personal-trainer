import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class CalendarExerciseProvider {
  late final ExerciseMapper _exerciseMapper = ExerciseMapper();

  Future<List<Exercise>> getExercisesFor(
      {required DateTime selectedDay, required String clientId}) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDay).toString();
      var exercisesResult = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.exercisesCollection)
          .collection(formattedDate)
          .get();

      var exercises = exercisesResult.docs
          .map((exercise) => _exerciseMapper.mapToExercise(exercise.data()))
          .toList();

      return exercises;
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future updateSetsNumberForExercise({
    required String clientId,
    required int setsNumber,
    required DateTime selectedDate,
    required String exerciseId}) {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDate).toString();
      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.exercisesCollection)
          .collection(formattedDate)
          .doc(exerciseId)
          .set({"sets": setsNumber});
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future updateRepsNumberForExercise({required String clientId,
    required int repsNumber,
    required DateTime selectedDate,
    required String exerciseId}) {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDate).toString();
      FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(clientId)
          .collection(FirebaseConstants.clientCollection)
          .doc(FirebaseConstants.exercisesCollection)
          .collection(formattedDate)
          .doc(exerciseId)
          .set({"reps": repsNumber});
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }
}
