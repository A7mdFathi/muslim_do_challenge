part of 'clients_bloc.dart';

abstract class ClientsEvent extends Equatable {
  const ClientsEvent();
}

class ClientsFetched extends ClientsEvent {
  @override
  List<Object?> get props => [];
}
