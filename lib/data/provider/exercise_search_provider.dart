import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchProvider {
  Future<List<Exercise>> searchForExercises(String query) async {
    try {
      String modifiedQuery = '#${query.toUpperCase()}';

      var titleResult = await FirebaseFirestore.instance
          .collection('exercises')
          .where('title', isGreaterThanOrEqualTo: query)
          .where('title', isLessThanOrEqualTo: '$query\uf7ff')
          .get();

      var tagResult = await FirebaseFirestore.instance
          .collection('exercises')
          .where('tags', arrayContains: modifiedQuery)
          .get();

      var titleMappedExercises = titleResult.docs
          .map((value) => _mapToExercise(value.data()))
          .toList();

      var tagsMappedExercises =
          tagResult.docs.map((value) => _mapToExercise(value.data())).toList();

      var result = titleMappedExercises + tagsMappedExercises;
      return Future.value(result);
    } catch (error) {
      //TODO: Check stacktrace on error
      return Future.error(error, StackTrace.current);
    }
  }

  Future<List<Exercise>> getAllExercises() async {
    try {
      var exercises =
          await FirebaseFirestore.instance.collection('exercises').get();

      var mappedExercises =
          exercises.docs.map((value) => _mapToExercise(value.data())).toList();
      return Future.value(mappedExercises);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future<void> addExercise(String id, DateTime selectedDay) {
    try {
      _updateTrainerDataWithNewClientData(id, selectedDay);
      return Future.value();
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Exercise _mapToExercise(Map<String, dynamic> data) {
    return Exercise(
        id: data['id'],
        title: data['title'],
        videoPath: data['videoPath'],
        tags: List.from(data['tags']));
  }

  Future<void> _updateTrainerDataWithNewClientData(
      String id, DateTime selectedDate) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDate).toString();
      await FirebaseFirestore.instance
          .collection('exercises')
          .doc(id)
          .get()
          .then((exercise) {
        if (exercise.exists) {
          //TODO: change user email to passed one from previous screens
          FirebaseFirestore.instance
              .collection('users')
              .doc('p@p.com')
              .collection("client")
              .doc("exercises")
              .collection(formattedDate)
              .add(exercise.data()!);
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
