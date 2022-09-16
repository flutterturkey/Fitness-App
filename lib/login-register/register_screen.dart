import 'package:ankara_fitnes/login-register/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'component/custom_button.dart';
import 'component/custom_test_field.dart';
import 'success_screen.dart';

class RegiterScreen extends StatefulWidget {
  const RegiterScreen({Key? key}) : super(key: key);

  @override
  State<RegiterScreen> createState() => _RegiterScreenState();
}

class _RegiterScreenState extends State<RegiterScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  "Create an Account.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Form(
                child: Column(
                  children: [
                    customTextField(
                        'First Name', emailController, Icons.person),
                    const SizedBox(
                      height: 8,
                    ),
                    customTextField(
                        'Last Name', passwordController, Icons.person),
                    const SizedBox(
                      height: 8,
                    ),
                    customTextField('email', passwordController, Icons.email),
                    const SizedBox(
                      height: 8,
                    ),
                    customTextField('Password', passwordController, Icons.lock,
                        isPassword: true),
                  ],
                ),
              ),
            ),
            CheckboxListTile(
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
                title: const Text(
                    'I agree to the Terms of Service and Privacy Policy')),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomButton(
                label: 'Register',
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
                  text: "Login",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
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
