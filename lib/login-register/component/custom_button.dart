import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final IconData? icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff9DCEFF),
                Color(0xff92A3FD),
              ],
            ),
            borderRadius: BorderRadius.circular(35)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
              ),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
