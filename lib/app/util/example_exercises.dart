import 'package:personal_trainer/domain/model/exercise.dart';

class ExampleExercises {
  static var list = [
    Exercise(
        id: "123",
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
        id: "321",
        title: 'Back Push ups',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#BACK', '#MOBILITY']),
    Exercise(
        id: "234",
        title: 'Arm push',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#ARMS', '#STRENGTH', '#HARDCORE']),
    Exercise(
        id: "546",
        title: 'Legs workout',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#MOBILITY', '#LEGS']),
    Exercise(
        id: "987",
        title: 'Nothing lazy workout',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#NOTHING', '#LAZY']),
    Exercise(
        id: "942",
        title: 'Pause',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        tags: ['#PAUSE']),
    Exercise(
        id: "935",
        title: 'Cardio & Strength',
        videoPath:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4m',
        tags: ['#STRENGTH', '#CARDIO', '#STRENGTH']),
  ];
}
