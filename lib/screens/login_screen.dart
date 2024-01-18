import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //image
            Image.asset(
              'images/th1.png',
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            //title
            Text(
              'SIGN IN',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            //subtitle

            Text(
              'Welcome back! Nice to see you again',
              style: GoogleFonts.robotoCondensed(fontSize: 18),
            ),

            SizedBox(
              height: 30,
            ),
            //Email TextField
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            //password
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: ' Password'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),

            //sign in
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.amber[900],
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  'Sign in',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              ),
            ),
            SizedBox(height: 5),
            //text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not yet a member?'),
                Text(
                  'Sign up now',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
