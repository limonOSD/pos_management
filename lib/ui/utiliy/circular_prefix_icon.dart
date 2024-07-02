import 'package:flutter/material.dart';

import 'app_colors.dart';

class CircularPrefixIcon extends StatelessWidget {
  final IconData icon;
  const CircularPrefixIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 30,
      backgroundColor: AppColors.primaryColor,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
