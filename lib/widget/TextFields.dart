import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefix: Container(
            margin: EdgeInsets.only(top: 8),
            child: const Icon(
              Icons.circle_outlined,
              color: Colors.black26,
            ),
          ),
          hintText: "Search for college school...",
          hintStyle: const TextStyle(color: Colors.black26),
          filled: true,
          fillColor: primaryColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(12))),
    );
  }
}
