class Exercise {
  final String id;
  final String title;
  final String videoPath;
  final List<String> tags;
  final int reps;
  final int sets;

  Exercise(
      {required this.reps,
      required this.sets,
      required this.id,
      required this.title,
      required this.videoPath,
      required this.tags});
}
