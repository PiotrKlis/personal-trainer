import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class CalendarExerciseProvider {
  ExerciseMapper _exerciseMapper = ExerciseMapper();

  Future<List<Exercise>> getExerciseFor(
      DateTime selectedDay, String userId) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDay).toString();
      var exercisesResult = await FirebaseFirestore.instance
          .collection(FirebaseConstants.usersCollection)
          .doc(userId)
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
}
