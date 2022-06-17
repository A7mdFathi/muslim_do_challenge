import 'package:injectable/injectable.dart';
import 'package:muslim_do_challenge/application/extentions/response_extension.dart';
import 'package:muslim_do_challenge/domain/entities/clients/clients.dart';
import 'package:muslim_do_challenge/domain/gateways/muslim_do_gateway/muslim_do_gateway.dart';

abstract class ClientRepository {
  Future<Clients> getAllClients(int page);
}

@Injectable(as: ClientRepository)
class ClientRepositoryImpl extends ClientRepository {
  final MuslimDoGateway _muslimDoGateway;

  ClientRepositoryImpl(this._muslimDoGateway);

  @override
  Future<Clients> getAllClients(int page) async =>
      await _muslimDoGateway.getAllClients(page).getDateOrThrowException();
}
