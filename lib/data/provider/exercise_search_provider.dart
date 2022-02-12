import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_trainer/data/util/const.dart';
import 'package:personal_trainer/domain/mapper/exercise_mapper.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchProvider {
  final _exerciseMapper = GetIt.I.get<ExerciseMapper>();

  Future<List<Exercise>> searchForExercises(
      {required String query, required List<String> filters}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> exercisesSnapshot =
          await _getExercisesSnapshotForInput(filters, query);

      var exercises = exercisesSnapshot.docs
          .map((value) => _exerciseMapper.mapToExercise(value.data()))
          .toList();

      return Future.value(exercises);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future<List<Exercise>> getAllExercises(
      {required List<String> filters}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> exercisesSnapshot =
          await _getAllExercisesSnapshots(filters);

      var exercises = exercisesSnapshot.docs
          .map((value) => _exerciseMapper.mapToExercise(value.data()))
          .toList();

      return Future.value(exercises);
    } catch (error) {
      return Future.error(error, StackTrace.current);
    }
  }

  Future<QuerySnapshot<Map<String, dynamic>>> _getAllExercisesSnapshots(
      List<String> filters) async {
    if (filters.isEmpty) {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .get();
      return exercisesSnapshot;
    } else {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where('tags', arrayContainsAny: filters)
          .get();
      return exercisesSnapshot;
    }
  }

  Future addExercise(
      {required String exerciseId,
      required DateTime selectedDate,
      required String clientId,
      required int index}) async {
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
              .doc(FirebaseConstants.userExercisesCollection)
              .collection(formattedDate);
          var userExerciseId = dateCollection.doc().id;
          var userExerciseData =
              _createUserExerciseData(id: userExerciseId, index: index);

          try {
            await dateCollection
                .doc(userExerciseId)
                .set(userExerciseData)
                .onError((error, stackTrace) => print("PKPK $error"));
          } catch (error) {
            print("PKPK $error");
          }
          //TODO this doesnt catch if theres not internet connection - find a way to show failed snackbar

          await dateCollection
              .doc(userExerciseId)
              .collection(FirebaseConstants.exerciseCollection)
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

  Map<String, dynamic> _createUserExerciseData({required id, required index}) {
    return {"id": id, "index": index, "reps": 12, "sets": 3};
  }

  Future<List<String>> getAllTags() async {
    var tagsSnapshot = await FirebaseFirestore.instance
        .collection(FirebaseConstants.tagsCollection)
        .doc(FirebaseConstants.tagsCollection)
        .get();
    List<String> tags = List.from(tagsSnapshot.data()?['tags']);
    return Future.value(tags);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> _getExercisesSnapshotForInput(
      List<String> filters, String query) async {
    if (filters.isEmpty) {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where('title', isGreaterThanOrEqualTo: query)
          .where('title', isLessThanOrEqualTo: '$query\uf7ff')
          .get();
      return exercisesSnapshot;
    } else {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where('tags', arrayContainsAny: filters)
          .where('title', isGreaterThanOrEqualTo: query)
          .where('title', isLessThanOrEqualTo: '$query\uf7ff')
          .get();
      return exercisesSnapshot;
    }
  }
}
