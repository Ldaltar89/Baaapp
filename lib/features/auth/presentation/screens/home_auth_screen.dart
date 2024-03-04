import 'package:animate_do/animate_do.dart';
import 'package:baaapp/shared/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 500),
                  child: const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(height: 20),
                FadeInDown(
                  delay: const Duration(milliseconds: 600),
                  child: Text(
                      'Automatic identity verification which enables you to verify your identity',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15)),
                ),
              ],
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 700),
              child: Container(
                height: height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/illustration.png'))),
              ),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 800),
              child: Column(
                children: [
                  CustomButtom(
                      text: 'Login',
                      onPressed: () => context.push('/pagelogin')),
                  const SizedBox(height: 20),
                  CustomFillButtom(
                      text: 'Sing Up', color: Colors.yellow, onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
