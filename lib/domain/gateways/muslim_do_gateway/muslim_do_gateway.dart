import 'package:dio/dio.dart';
import 'package:muslim_do_challenge/domain/entities/clients/clients.dart';
import 'package:retrofit/retrofit.dart';

part 'muslim_do_gateway.g.dart';
@RestApi(baseUrl: "https://gorest.co.in/public/v1/")
abstract class MuslimDoGateway {
  factory MuslimDoGateway(Dio dio, {String baseUrl}) = _MuslimDoGateway;

  @GET("users")
  Future<HttpResponse<Clients>> getAllClients(@Query("page") int page);
}
