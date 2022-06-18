import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim_do_challenge/application/extentions/strings_extentions.dart';
import 'package:muslim_do_challenge/application/router/routes.dart';
import 'package:muslim_do_challenge/domain/entities/client/client.dart';

import '../../../resources/app_colors.dart';
import '../../../widgets/client_avatar_widget.dart';

class ClientItemWidget extends StatelessWidget {
  const ClientItemWidget({Key? key, required this.client}) : super(key: key);
  final Client client;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 12.h,
      onTap: (){
        context.pushNamed(detailsRouteName,extra: client);
      },
      dense: true,
      tileColor: AppColor.greyBackgroundTile.withOpacity(0.15),
      enableFeedback: true,
      leading: _buildLeadingWidget(),
      title: _buildTitleWidget(),
      subtitle: _buildSubtitleWidget(),
    );
  }

  Text _buildSubtitleWidget() {
    return Text(
      client.email??'',
      style: TextStyle(
        fontSize: 12.sp,
      ),
    );
  }

  Text _buildTitleWidget() {
    return Text(
      client.name ?? '',
      style: const TextStyle(fontWeight: FontWeight.w600),
    );
  }

  Widget _buildLeadingWidget() {
    return ClientAvatarWidget(client: client);
  }
}

