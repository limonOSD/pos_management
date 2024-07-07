import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pos_management/ui/screen/auth/update_password_screen.dart';
import 'package:pos_management/ui/utiliy/app_colors.dart';

import '../../utiliy/applogo.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const AppLogo(
                height: 80,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Verify Otp',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                'A 6 digit OTP code has been sent',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 24.0,
              ),
              PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  inactiveColor: AppColors.primaryColor,
                  selectedFillColor: Colors.transparent,
                  selectedColor: Colors.purple,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                appContext: context,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => UpdatePasswordScreen());
                  },
                  child: const Text('Verify'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
