import 'package:ankara_fitnes/login-register/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(146, 163, 253, 1),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Container(
                margin: const EdgeInsets.all(80),
                child: Image.asset('assets/images/fitness_logo.png')),
            const Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(16),
                height: 60,
                width: 315,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: const Center(
                  child: Text(
                    'Get Strated',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(146, 163, 253, 1),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
