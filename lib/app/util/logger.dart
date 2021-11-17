import 'package:logger/logger.dart';

class Log {

  static Logger? _logger;

  static void d(message) {
    if (_logger == null) {
      _logger = Logger();
    }
    _logger?.d(message);
  }

  static void e(message) {
    if (_logger == null) {
      _logger = Logger();
    }
    _logger?.e(message);
  }
}
