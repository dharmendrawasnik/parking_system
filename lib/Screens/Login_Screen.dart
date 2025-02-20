import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Theme/CostumeColors.dart';
import 'Dashboard.dart';
import 'Home_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.4),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                Container(child: Image.asset('assets/parking_car.jpeg')),
                Center(
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, -1), // Moves shadow upwards
                          blurRadius: 1, // Soft shadow effect
                          color: Colors.blue, // Blue shadow color
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Please Sign In Your Account.",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          offset: Offset(0, -1), // Moves shadow upwards
                          blurRadius: 1, // Soft shadow effect
                          color: Colors.blue, // Blue shadow color
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 470,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height:
                          double
                              .infinity, // Ensuring it fills the parent container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceAround, // Adjust alignment as needed
                          children: [
                            SizedBox(height: 15),
                            Text(
                              'Email/Username',
                              style: TextStyle(
                                color: Colors.blue.shade300,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.blue.shade300),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email/Password',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.email_outlined,
                                        size: 30,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.blue.shade300,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.blue.shade300),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(

                                      hintText: '**********',
                                      border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.lock_outline,
                                        size: 30,
                                        color: Colors.blue.shade300,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forget Password',
                                    style: TextStyle(
                                      color: Colors.blue.shade300,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ),
                                );
                              },
                              child: Container(
                                color: Colors.blue.shade300,
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '--------------------------------------',
                                  ),
                                ),
                                Text(
                                  ' Or ',
                                  style: TextStyle(
                                    color: Colors.blue.shade300,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '--------------------------------------',
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Container(
                                width: 300,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue.shade300,
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          'assets/google-logo-48.png',
                                        ),
                                        width: 48,
                                        height: 48,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        'Continue with google',
                                        style: TextStyle(
                                          color: Colors.blue.shade300,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
