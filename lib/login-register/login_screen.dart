import 'package:ankara_fitnes/login-register/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'component/custom_button.dart';
import 'component/custom_test_field.dart';
import 'success_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Hey there,",
                  style: TextStyle(fontSize: 15),
                )),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Welcome Back.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Form(
                child: Column(
                  children: [
                    customTextField('Email', emailController, Icons.email),
                    const SizedBox(
                      height: 8,
                    ),
                    customTextField('Password', passwordController, Icons.lock,
                        isPassword: true),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomButton(
                label: 'Login',
                icon: Icons.login,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SuccessScreen();
                  }));
                },
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialLoginButton('assets/images/g_logo.png', () {}),
                const SizedBox(
                  width: 15,
                ),
                socialLoginButton('assets/images/f_logo.png', () {}),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "Sign Up",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegiterScreen(),
                          ),
                        ),
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold))
            ])),
          ],
        ),
      ),
    );
  }

  GestureDetector socialLoginButton(String logoPath, Function() onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          logoPath,
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget customTextField(
      String hintText, TextEditingController controller, IconData icon,
      {bool? isPassword}) {
    return CustomTextField(
      label: hintText,
      icon: icon,
      isPassword: isPassword,
    );
  }
}
