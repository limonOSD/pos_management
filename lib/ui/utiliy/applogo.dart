import 'package:flutter/material.dart';
import 'package:pos_management/ui/utiliy/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height, this.width});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsPath.logo,
      width: width ?? 120,
      height: height,
    );
  }
}
