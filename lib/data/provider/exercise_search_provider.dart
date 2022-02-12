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

  //TODO this doesnt emit error if there is no internet connection - find a way to show failed snackbar
  Future addExercise(
      {required String exerciseId,
      required DateTime selectedDate,
      required String clientId,
      required int index}) async {
    try {
      var formattedDate = DateUtils.dateOnly(selectedDate).toString();
      var exerciseSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .doc(exerciseId)
          .get();
      if (exerciseSnapshot.data() != null) {
        var dateCollection = FirebaseFirestore.instance
            .collection(FirebaseConstants.usersCollection)
            .doc(clientId)
            .collection(FirebaseConstants.clientCollection)
            .doc(FirebaseConstants.userExercisesCollection)
            .collection(formattedDate);

        var userExerciseId = dateCollection.doc().id;

        var userExerciseData =
            _createUserExerciseData(id: userExerciseId, index: index);

        await dateCollection.doc(userExerciseId).set(userExerciseData);

        await dateCollection
            .doc(userExerciseId)
            .collection(FirebaseConstants.exerciseCollection)
            .add(exerciseSnapshot.data()!);
        return Future.value();
      } else {
        return Future.error('exercise does not exist!');
      }
    } catch (error) {
      Future.error(error);
    }
  }

  Future<List<String>> getAllTags() async {
    var tagsSnapshot = await FirebaseFirestore.instance
        .collection(FirebaseConstants.tagsCollection)
        .doc(FirebaseConstants.tagsCollection)
        .get();
    List<String> tags =
        List.from(tagsSnapshot.data()?[FirebaseConstants.tagsField]);
    return Future.value(tags);
  }

  Map<String, dynamic> _createUserExerciseData({required id, required index}) {
    return {"id": id, "index": index, "reps": 12, "sets": 3};
  }

  Future<QuerySnapshot<Map<String, dynamic>>> _getExercisesSnapshotForInput(
      List<String> filters, String query) async {
    if (filters.isEmpty) {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where(FirebaseConstants.titleField, isGreaterThanOrEqualTo: query)
          .where(FirebaseConstants.titleField,
              isLessThanOrEqualTo: '$query\uf7ff')
          .get();
      return exercisesSnapshot;
    } else {
      var exercisesSnapshot = await FirebaseFirestore.instance
          .collection(FirebaseConstants.exercisesCollection)
          .where(FirebaseConstants.tagsField, arrayContainsAny: filters)
          .where(FirebaseConstants.titleField, isGreaterThanOrEqualTo: query)
          .where(FirebaseConstants.titleField,
              isLessThanOrEqualTo: '$query\uf7ff')
          .get();
      return exercisesSnapshot;
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
          .where(FirebaseConstants.tagsField, arrayContainsAny: filters)
          .get();
      return exercisesSnapshot;
    }
  }
}
