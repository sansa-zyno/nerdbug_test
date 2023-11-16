import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurvedTextField extends StatelessWidget {
  final String? hint;
  TextEditingController? controller;
  TextInputType? type;
  bool? obscureText;
  int? maxlines;
  String? Function(String?)? validator;
  Widget? suffixIcon;
  bool? readOnly;

  CurvedTextField(
      {this.controller,
      this.hint,
      this.obscureText,
      this.type,
      this.maxlines,
      this.validator,
      this.suffixIcon,
      this.readOnly});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 283,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: TextFormField(
        readOnly: readOnly ?? false,
        controller: controller,
        keyboardType: type ?? TextInputType.text,
        obscureText: obscureText ?? false,
        maxLines: maxlines,
        decoration: new InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            alignLabelWithHint: false,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            hintText: hint ?? '',
            labelStyle: TextStyle(
              fontFamily: "Nunito",
            ),
            hintStyle: TextStyle(fontFamily: "Nunito", color: Colors.black45),
            suffixIcon: suffixIcon ?? null),
        validator: validator ?? null,
      ),
    );
  }
}
