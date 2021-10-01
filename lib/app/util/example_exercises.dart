import 'package:personal_trainer/domain/model/exercise.dart';

class ExampleExercises {
  static var list = [
    Exercise(
        title: 'Very big Push press',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: [
          '#CARDIO',
          '#STRENGTH',
          '#CARDIO',
          '#STRENGTH',
          '#CARDIO',
          '#STRENGTH',
          '#CARDIO',
          '#STRENGTH',
        ]),
    Exercise(
        title: 'Back Push ups',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#BACK', '#MOBILITY']),
    Exercise(
        title: 'Arm push',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#ARMS', '#STRENGTH', '#HARDCORE']),
    Exercise(
        title: 'Legs workout',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#MOBILITY', '#LEGS']),
    Exercise(
        title: 'Nothing lazy workout',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#NOTHING', '#LAZY']),
    Exercise(
        title: 'Pause',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#PAUSE']),
    Exercise(
        title: 'Cardio & Strength',
        videoPath: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4m',
        tags: ['#STRENGTH', '#CARDIO', '#STRENGTH']),
  ];
}
