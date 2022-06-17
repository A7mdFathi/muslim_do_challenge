import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_do_challenge/domain/entities/clients/clients.dart';
import 'package:muslim_do_challenge/domain/repositories/clients_repository.dart';

@injectable
class GetClientsUseCase {
  final ClientRepository _clientRepository;

  GetClientsUseCase(this._clientRepository);

  Future<Either<Exception, Clients>> execute(int page) async {
    try {
      final clients = await _clientRepository.getAllClients(page);
      return Right(clients);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
