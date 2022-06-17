import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'app_logger.dart';

@injectable
class AppBlocObserver extends BlocObserver {
  final AppLogger _appLogger;

  AppBlocObserver(this._appLogger);

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _appLogger.verbose('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _appLogger.verbose('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _appLogger.fatalError('onError -- ${bloc.runtimeType}, $error');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _appLogger.warning('onClose -- ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _appLogger.verbose('${bloc.runtimeType} ${event.runtimeType}');
  }
}
