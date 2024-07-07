import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_management/ui/screen/auth/verify_otp_screen.dart';
import 'package:pos_management/ui/utiliy/app_colors.dart';

import '../../utiliy/applogo.dart';
import '../../utiliy/circular_prefix_icon.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
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
                'Forgot Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 5.0,
              ),
              TextFormField(
                decoration: (const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: AppColors.primaryColor,
                    ),
                    hintText: 'Mobile no.')),
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your Mobile no.';
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
                    Get.to(() => VerifyOtpScreen());
                  },
                  child: const Text('Send'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
