class FirebaseConstants {
  static const String usersCollection = 'users';
  static const String exercisesCollection = 'exercises';
  static const String tagsCollection = 'tags';
  static const String exerciseCollection = 'exercise';
  static const String userExercisesCollection = 'userExercises';
  static const String trainerCollection = 'trainer';
  static const String dataCollection = 'data';
  static const String clientCollection = 'client';
  static const String repsField = 'reps';
  static const String setsField = 'sets';
  static const String indexField = 'index';
  static const String titleField = 'title';
  static const String tagsField = 'tags';
}

class DurationConst {
  static const int debounceTime = 100;
  static const int longerDebounceTime = 400;
  static const int snackbarVisibilityDuration = 500;
  static const int snackbarVisibilityLongerDuration = 2000;
}

class ValidatorConst {
  static const int minPasswordLength = 6;
}

class FirebaseAuthExceptionCodeConst {
  static const String NETWORK_REQUEST_FAILED_EXCEPTION =
      "network-request-failed";
  static const String USER_NOT_FOUND_EXCEPTION = "user-not-found";
  static const String EMAIL_NOT_VERIFIED_EXCEPTION = "email-not-verified";
}
