import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_trainer/domain/model/exercise.dart';

class ExerciseSearchProvider {
  Future<List<Exercise>> searchForExercises(String query) async {
    // FirebaseFirestore.instance
    //     .collection('users')
    //     .where('age', isGreaterThan: 20)
    //     .get()
    //     .then();
    //
    var test = await FirebaseFirestore.instance
        .collection('exercises')
        .where('title', isGreaterThanOrEqualTo: query)
        .where('title', isLessThanOrEqualTo: '$query\uf7ff')
        .get();
    // .then((result) => result.docs.forEach((snapshot) {
    //       print(snapshot.data());
    //     }));

    String modifiedQuery = query.toUpperCase();
    var test2 = await FirebaseFirestore.instance
        .collection('exercises')
        .where('tags', arrayContains: '#$modifiedQuery') //works!
        // .where('tags', whereIn: ['#$modifiedQuery'])
        // .where('tags', arrayContainsAny: ['#$query'])
        //     .where('tags', isGreaterThanOrEqualTo: '#$modifiedQuery')
        //     .where('title', isLessThanOrEqualTo: '$query\uf7ff')
        .get();

    var titleMappedExercises =
        test.docs.map((value) => mapToExercise(value.data())).toList();

    var tagsMappedExercises =
        test2.docs.map((value) => mapToExercise(value.data())).toList();

    print('title mapped: $titleMappedExercises');
    print('tags mapped: $tagsMappedExercises');
    return Future.value(titleMappedExercises);
  }

  Exercise mapToExercise(Map<String, dynamic> data) {
    return Exercise(
        id: data['id'],
        title: data['title'],
        videoPath: data['videoPath'],
        tags: List.from(data['tags']));
  }
}
