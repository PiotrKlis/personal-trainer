import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchProvider {
  final _exerciseMapper = GetIt.I.get<ExerciseMapper>();

  Future<List<Exercise>> searchForExercises(String query) async {
    try {
      String modifiedQuery = '#${query.toUpperCase()}';

      var titleResult = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where('title', isGreaterThanOrEqualTo: query)
          .where('title', isLessThanOrEqualTo: '$query\uf7ff')
          .get();

      var tagResult = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where('tags', arrayContains: modifiedQuery)
          .get();

      var titleMappedExercises = titleResult.docs
          .map((value) => _exerciseMapper.mapToExercise(value.data()))
          .toList();

      var tagsMappedExercises = tagResult.docs
          .map((value) => _exerciseMapper.mapToExercise(value.data()))
          .toList();

      var result = titleMappedExercises + tagsMappedExercises;
      return Future.value(result);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future<List<Exercise>> getAllExercises() async {
    try {
      var exercises = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .get();
      var mappedExercises = exercises.docs
          .map((value) => _exerciseMapper.mapToExercise(value.data()))
          .toList();
      return Future.value(mappedExercises);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future addExercise(
      {required String exerciseId,
      required DateTime selectedDate,
      required String clientId}) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDate).toString();
      await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .doc(exerciseId)
          .get()
          .then((exercise) async {
        if (exercise.data() != null) {
          var dateCollection = FirebaseFirestore.instance
              .collection(FirebaseConstants.usersCollection)
              .doc(clientId)
              .collection(FirebaseConstants.clientCollection)
              .doc(FirebaseConstants.exercisesCollection)
              .collection(formattedDate);
          var userExerciseId = dateCollection.doc().id;
          await dateCollection.doc(userExerciseId).set(exercise.data()!);
          await dateCollection
              .doc(userExerciseId)
              .update({"userExerciseId": userExerciseId});
          return Future.value();
        } else {
          return Future.error('exercise does not exist!');
        }
      });
    } catch (error) {
      Future.error(error);
    }
  }
}
