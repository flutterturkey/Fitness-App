import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.icon,
    this.isPassword,
  }) : super(key: key);
  final String label;
  final IconData? icon;
  final bool? isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  void changeVisibilty() {}
  @override
  void initState() {
    // TODO: implement initState
    isVisible = widget.isPassword != null;
    super.initState();
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(.1)),
        child: TextFormField(
          obscureText: isVisible,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.label,
              prefixIcon: Icon(widget.icon),
              suffixIcon: widget.isPassword == null
                  ? null
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        widget.isPassword!
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    )),
        ),
      ),
    );
  }
}
