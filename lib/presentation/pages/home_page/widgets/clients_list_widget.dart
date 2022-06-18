import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/application/extentions/strings_extentions.dart';

import '../../../../domain/entities/client/client.dart';
import '../bloc/clients_bloc/clients_bloc.dart';
import 'client_item_widget.dart';

class ClientsListWidget extends StatefulWidget {
  const ClientsListWidget({Key? key, required this.clients}) : super(key: key);
  final List<Client> clients;
  @override
  State<ClientsListWidget> createState() => _ClientsListWidgetState();
}

class _ClientsListWidgetState extends State<ClientsListWidget> {
  @override
  void initState() {
    _controller.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? currentStatus;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.clients.length,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      controller: _controller,
      itemBuilder: (context, index) {
        final client = widget.clients[index];
        if (client.status != currentStatus) {
          currentStatus = client.status;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _groupSeperatorTextWidget(client.status ?? ''),
              ClientItemWidget(client: client)
            ],
          );
        }
        return ClientItemWidget(client: client);
      },
    );
  }

  Padding _groupSeperatorTextWidget(String groupByValue) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 12.h,
      ),
      child: Text(
        groupByValue.capitalize(),
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  void _onScroll() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      context.read<ClientsBloc>().add(ClientsFetched());
    }
  }

  final _controller = ScrollController();
}
