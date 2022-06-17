part of 'clients_bloc.dart';

abstract class ClientsState extends Equatable {
  const ClientsState();
}

class ClientsInitial extends ClientsState {
  @override
  List<Object> get props => [];
}

class ClientsLoadInProgress extends ClientsState {
  @override
  List<Object> get props => [];
}

class ClientsLoaded extends ClientsState {
  final List<Client> clients;

  const ClientsLoaded(this.clients);

  @override
  List<Object> get props => [clients];
}

class ClientsFailure extends ClientsState {
  final Exception exception;

  const ClientsFailure(this.exception);

  @override
  List<Object> get props => [exception];
}
