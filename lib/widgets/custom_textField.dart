import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Function() onTap;
  Function(String)? onChanged;
  final String hint;

   CustomTextField({Key? key, required this.onTap, required this.hint,this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
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
