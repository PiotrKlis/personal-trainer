import 'package:cloud_firestore/cloud_firestore.dart';
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

      var titleMappedExercises =
      titleResult.docs.map((value) => _mapToExercise(value.data())).toList();

      var tagsMappedExercises =
      tagResult.docs.map((value) => _mapToExercise(value.data())).toList();

      var result = titleMappedExercises + tagsMappedExercises;
      return Future.value(result);
    }
    catch (error) {
      //TODO: Check stacktrace on error
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
}
