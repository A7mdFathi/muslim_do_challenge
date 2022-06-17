import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/dependencies/dependency_init.dart';
import 'package:muslim_do_challenge/presentation/pages/home_page/bloc/clients_bloc/clients_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ClientsBloc>()..add(ClientsFetched()),
      child: const Scaffold(
        body: ClientsListWidget(),
      ),
    );
  }
}

class ClientsListWidget extends StatelessWidget {
  const ClientsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocBuilder<ClientsBloc, ClientsState>(
        builder: (context, state) {
          String data = '';
          if (state is ClientsLoaded) {
            data = state.clients.length.toString();
          } else if (state is ClientsFailure) {
            data = state.exception.toString();
          }
          return Text(
            data,
            style: TextStyle(fontSize: 30.sp),
          );
        },
      ),
    );
  }
}
