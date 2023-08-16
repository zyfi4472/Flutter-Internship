import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void _signIn() {}

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  Container(
                    // width: double.infinity,
                    // height: double.infinity,
                    color: const Color.fromARGB(
                        255, 227, 221, 221), // Background color
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 400.w,
                      height: 190.h,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
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
                            const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.blue, // Text color
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40 // Make the text bold
                                  ),
                            ),
                            SizedBox(height: 46.h),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                labelText: 'Email',
                                prefixIcon: const Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 26.h),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                labelText: 'Password',
                                prefixIcon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 26.h),
                            ElevatedButton(
                              onPressed: _signIn,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Background color
                                padding: EdgeInsets.symmetric(
                                    horizontal: 130.w, vertical: 20.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.blue, // Text color
                                    fontWeight:
                                        FontWeight.bold, // Make the text bold
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Not Registered? Sign Up',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.blue, // Text color
                                    fontWeight:
                                        FontWeight.bold, // Make the text bold
                                  ),
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
            ),
          );
        });
  }
}
