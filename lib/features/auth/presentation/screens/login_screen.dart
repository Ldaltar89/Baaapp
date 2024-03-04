import 'package:animate_do/animate_do.dart';
import 'package:baaapp/features/auth/presentation/provider/providers_auth.dart';
import 'package:baaapp/shared/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: SizedBox(
        //se cambio Container por el sizebox
        height: height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 500),
                        delay: const Duration(milliseconds: 300),
                        child: const Text('Login',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 20),
                      FadeInDown(
                        duration: const Duration(milliseconds: 500),
                        delay: const Duration(milliseconds: 325),
                        child: Text(
                          'Login to your account',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[700]),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        FadeInDown(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 350),
                            child: CustomTextFormField(
                              label: 'Email',
                              keyboartype: TextInputType.emailAddress,
                              onChanged: ref
                                  .read(loginFormProvider.notifier)
                                  .onEmailChange,
                              errorMessage: loginForm.isFormPosted
                                  ? loginForm.email.errorMessage
                                  : null,
                            )),
                        FadeInDown(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 350),
                            child: CustomTextFormField(
                              label: 'Password',
                              obscuretext: true,
                              onChanged: ref
                                  .read(loginFormProvider.notifier)
                                  .onPasswordChange,
                              errorMessage: loginForm.isFormPosted
                                  ? loginForm.password.errorMessage
                                  : null,
                            )),
                      ],
                    ),
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 375),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: CustomFillButtom(
                          text: 'Login',
                          color: Colors.greenAccent,
                          onPressed:
                              ref.read(loginFormProvider.notifier).onFormSubmit,
                        )),
                  ),
                ],
              ),
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 500),
              delay: const Duration(milliseconds: 425),
              child: Container(
                height: height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.cover)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
