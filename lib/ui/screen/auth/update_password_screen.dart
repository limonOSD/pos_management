import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_management/ui/screen/home_screen.dart';
import 'package:pos_management/ui/utiliy/app_colors.dart';

import '../../utiliy/applogo.dart';
import '../../utiliy/circular_prefix_icon.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              const AppLogo(
                height: 80,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Update Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                decoration: (const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.primaryColor,
                    ),
                    hintText: 'new password')),
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your new password';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: (const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.primaryColor,
                    ),
                    hintText: 'confirm password')),
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your confirm password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomeScreen());
                  },
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
