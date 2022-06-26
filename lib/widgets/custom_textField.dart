import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function() onTap;
  final String hint;

  const CustomTextField({Key? key, required this.onTap, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      decoration: InputDecoration(
        label: Text(hint),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
