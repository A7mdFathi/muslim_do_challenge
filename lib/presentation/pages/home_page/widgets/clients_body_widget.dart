import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/clients_bloc/clients_bloc.dart';
import 'clients_list_widget.dart';

class ClientsViewWidget extends StatelessWidget {
  const ClientsViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientsBloc, ClientsState>(
      buildWhen: (previous, current) => current is ClientsLoaded,
      builder: (context, state) {
        if (state is ClientsLoaded) {
          final clients = state.clients;
          return ClientsListWidget(clients: clients);
        }
        return const SizedBox();
      },
    );
  }
}
