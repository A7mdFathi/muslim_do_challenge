import 'package:flutter/material.dart';
import 'package:muslim_do_challenge/presentation/helpers/size_extension.dart';
import 'package:muslim_do_challenge/presentation/widgets/client_avatar_widget.dart';
import 'package:muslim_do_challenge/presentation/resources/app_colors.dart';
import 'package:muslim_do_challenge/presentation/widgets/custom_app_bar.dart';

import '../../../domain/entities/client/client.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.client}) : super(key: key);
  final Client client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppBar(text: 'User Details'),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        alignment: Alignment.center,
        child: Column(
          children: [
            20.heightBox,
            Transform.scale(
                scale: 1.5, child: ClientAvatarWidget(client: client)),
            24.heightBox,
            Text(client.name ?? ''),
            8.heightBox,
            Text(client.email ?? ''),
          ],
        ),
      ),
    );
  }
}
