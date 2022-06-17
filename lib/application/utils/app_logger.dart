import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

abstract class AppLogger {
  void verbose(dynamic message);

  void debug(dynamic message);

  void info(dynamic message);

  void warning(dynamic message);

  void error(dynamic message);

  void fatalError(dynamic message);
}

@Injectable(as: AppLogger)
class AppLoggerImpl extends AppLogger {
  Logger? _logger;

  AppLoggerImpl() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        // number of methods calls to be displayed
        errorMethodCount: 8,
        // number of method calls if stacktrace is provided
        lineLength: 120,
        // width of the output
        colors: true,
        // Colorful log messages
        printEmojis: true,
        // Print an emoji for each log message
        printTime: true, // Should each log print contain a timestamp
      ),
    );
  }

  @override
  void verbose(dynamic message) {
    _logger!.v(message);
  }

  @override
  void debug(dynamic message) {
    _logger!.d(message);
  }

  @override
  void info(dynamic message) {
    _logger!.i(message);
  }

  @override
  void warning(dynamic message) {
    _logger!.w(message);
  }

  @override
  void error(dynamic message) {
    _logger!.e(message);
  }

  @override
  void fatalError(dynamic message) {
    _logger!.wtf(message);
  }
}
