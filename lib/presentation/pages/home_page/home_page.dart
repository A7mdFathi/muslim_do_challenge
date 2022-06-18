import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/dependencies/dependency_init.dart';
import 'package:muslim_do_challenge/presentation/pages/home_page/bloc/clients_bloc/clients_bloc.dart';
import 'package:muslim_do_challenge/presentation/pages/home_page/widgets/clients_body_widget.dart';
import 'package:muslim_do_challenge/presentation/resources/app_colors.dart';
import 'package:muslim_do_challenge/presentation/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ClientsBloc>()..add(ClientsFetched()),
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: CustomAppBar(text: 'User List'),
        body: const ClientsViewWidget(),
      ),
    );
  }
}
