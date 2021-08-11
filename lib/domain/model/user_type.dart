enum UserType { TRAINER, CLIENT }

extension UserTypeExtension on UserType {
  String get name {
    switch (this) {
      case UserType.TRAINER:
        return 'trainer';
      case UserType.CLIENT:
        return 'client';
    }
  }
}