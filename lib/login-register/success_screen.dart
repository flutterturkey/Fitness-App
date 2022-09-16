import 'package:ankara_fitnes/home/home_screen.dart';
import 'package:ankara_fitnes/login-register/component/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/go_to_login.png'),
                  const Text(
                    'Welcome to Ankara Fitness',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: const Text(
                      'You are all set now, let’s reach your goals together with us',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomButton(
                    label: 'Go To Home',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
