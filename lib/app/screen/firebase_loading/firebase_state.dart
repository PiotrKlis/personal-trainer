abstract class FirebaseState {}

class FirebaseLoading extends FirebaseState {}

class FirebaseInitialized extends FirebaseState {}

class FirebaseNotInitialized extends FirebaseState {
  final String error;

  FirebaseNotInitialized(this.error);
}
