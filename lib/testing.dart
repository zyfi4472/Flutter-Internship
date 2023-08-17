import 'package:flutter/material.dart';
import 'package:firebase_flutter/components/my_button.dart';
import 'package:firebase_flutter/components/my_textfield.dart';
// import 'package:firebase_flutter/components/square_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/my_text.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void _signIn() {}

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromARGB(
                      255, 227, 221, 221), // Background color
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 400.w,
                    height: 190.h,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Rounded Bottom',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 350.w,
                    height: 500.h,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyTextComponent(
                            text: 'Login',
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.sp,
                          ),

                          // const Spacer(
                          //   flex: 1,
                          // ),
                          SizedBox(height: 26.h),

                          MyTextField(
                            controller: emailController,
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            obscureText: true,
                            prefixIcon: const Icon(Icons.email),
                          ),
                          SizedBox(height: 26.h),
                          MyTextField(
                            controller: passwordController,
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            obscureText: true,
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          SizedBox(height: 26.h),
                          MyButton(
                            signIn: () {},
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyTextComponent(
                                text: 'Forgot Password?',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyTextComponent(
                                text: 'Not Registered? Sign Up',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
