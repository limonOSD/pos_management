import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_management/ui/screen/auth/forgetpassword_screen.dart';
import 'package:pos_management/ui/screen/auth/verify_otp_screen.dart';
import 'package:pos_management/ui/utiliy/app_colors.dart';

import '../../utiliy/applogo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'Welcome back',
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
                    hintText: 'Email')),
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your email';
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
                    hintText: 'Password')),
                validator: (value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter your password';
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
                  onPressed: () {},
                  child: const Text('LogIn'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => ForgetpasswordScreen());
                  },
                  child: Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.titleSmall,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
