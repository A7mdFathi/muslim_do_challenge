import 'package:flutter/material.dart';
import 'package:muslim_do_challenge/presentation/resources/app_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key, required this.text})
      : super(
          key: key,
          title: Text(
            text,
            style: const TextStyle(color: AppColor.black),
          ),
          elevation: 0,
          backgroundColor: AppColor.white,
          iconTheme: const IconThemeData(color: AppColor.black),
        );
  final String text;
}
