import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_management/ui/screen/auth/login_screen.dart';
import 'package:pos_management/ui/utiliy/app_theme.dart';

class PosManagement extends StatefulWidget {
  const PosManagement({super.key});

  @override
  State<PosManagement> createState() => _PosManagementState();
}

class _PosManagementState extends State<PosManagement> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Pos Management',
      home: LoginScreen(),
      theme: AppThemeData.lightThemeData,
    );
  }
}
