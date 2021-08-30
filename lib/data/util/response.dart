abstract class Response {}

class Success extends Response {}

class Failure extends Response {
  final String error;

  Failure(this.error);
}

