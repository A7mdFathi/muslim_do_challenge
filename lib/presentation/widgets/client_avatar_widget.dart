
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muslim_do_challenge/application/extentions/strings_extentions.dart';

import '../../domain/entities/client/client.dart';
import '../resources/app_colors.dart';

class ClientAvatarWidget extends StatelessWidget {
  const ClientAvatarWidget({
    Key? key,
    required this.client,
  }) : super(key: key);

  final Client client;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          width: 60.r,
          height: 60.r,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(client.clientColor??0).withOpacity(0.8)),
          child: Text(
            (client.name??'').getFirstLetter(),
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Card(
          color: AppColor.white,
          shape: const CircleBorder(),
          child: Icon(
            client.gender == 'female'
                ? Icons.female
                : Icons.male,
            color: AppColor.black,
            size: 14.sp,
          ),
        ),
      ],
    );
  }
}
