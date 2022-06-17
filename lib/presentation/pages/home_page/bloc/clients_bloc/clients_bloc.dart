import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:muslim_do_challenge/domain/usecases/get_clients_use_case.dart';

import '../../../../../domain/entities/client/client.dart';

part 'clients_event.dart';
part 'clients_state.dart';

@injectable
class ClientsBloc extends Bloc<ClientsEvent, ClientsState> {
  ClientsBloc(this._getClientsUseCase) : super(ClientsInitial()) {
    on<ClientsFetched>(_mapClientsFetchedToState);
  }
  final GetClientsUseCase _getClientsUseCase;
  int page = 1;
  bool hasReachMax = false;
  List<Client> clients = [];
  _mapClientsFetchedToState(
      ClientsFetched event, Emitter<ClientsState> emit) async {
    if (hasReachMax) return;
    emit(ClientsLoadInProgress());

    final result = await _getClientsUseCase.execute(page);

    result.fold(
      (left) => emit(ClientsFailure(left)),
      (right) {
        page = right.meta?.pagination?.page ?? page;
        hasReachMax = page >= (right.meta?.pagination?.pages ?? page);
        clients.addAll(right.data ?? []);
        emit(ClientsLoaded(clients));
      },
    );
  }
}
