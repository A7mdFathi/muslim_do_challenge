import 'package:dio/dio.dart';
import 'package:muslim_do_challenge/application/utils/app_logger.dart';
import 'package:muslim_do_challenge/dependencies/dependency_init.dart';
import 'package:retrofit/dio.dart';

extension ResponseOrError<T> on Future<HttpResponse<T>> {
  Future<T> getDateOrThrowException() async {
    return then((value) => value.data).catchError((Object obj) {
      switch (obj.runtimeType) {
        case DioError:
          _handleApiException(obj);
          break;
        default:
          getIt<AppLogger>().error(obj);
      }
    });
  }
}

void _handleApiException(Object obj) {
  final dioErrorType = (obj as DioError).type;
  switch (dioErrorType) {
    case DioErrorType.sendTimeout:
      getIt<AppLogger>().error(obj);
      throw Exception('send timeout exception');
    case DioErrorType.receiveTimeout:
      getIt<AppLogger>().error(obj);
      throw Exception('recieve timeout exception');
    case DioErrorType.response:
      getIt<AppLogger>().error(obj);
      throw Exception('response exception');
    case DioErrorType.cancel:
      getIt<AppLogger>().error(obj);
      throw Exception('cancel exception');
    case DioErrorType.other:
      getIt<AppLogger>().error(obj);
      throw Exception('other exception');
    case DioErrorType.connectTimeout:
      getIt<AppLogger>().error(obj);
      throw Exception('connection timeout exception');
    default:
      getIt<AppLogger>().error(obj);
      throw Exception('$obj exception');
  }
}
