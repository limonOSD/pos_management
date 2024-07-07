import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:pos_management/app.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => PosManagement()));
}
