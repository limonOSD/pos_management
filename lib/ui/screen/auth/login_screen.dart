import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos_management/ui/screen/auth/forgetpassword_screen.dart';

import 'package:pos_management/ui/utiliy/assets_path.dart';

import '../../utiliy/circular_prefix_icon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  AssetsPath.loginScreenImage,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    CircularPrefixIcon(
                      icon: Icons.email,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(hintText: 'mobile no.'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircularPrefixIcon(icon: Icons.lock),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(hintText: 'password'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 170,
                  child: ElevatedButton(onPressed: () {}, child: Text('LogIn')),
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
      ),
    );
  }
}
