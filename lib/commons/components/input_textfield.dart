import 'package:delivery_food_app/theme/appcolor.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String title;
  final String label;
  final TextEditingController controller;
  final int minLine;
  final int maxLine;
  final bool isNumber;
  final bool isPassword;

  AppTextField({
    Key key,
    this.controller,
    this.title,
    this.label,
    this.maxLine = 1,
    this.minLine = 1,
    this.isNumber = false,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: AppColor.neutral1,
      style: Theme.of(context).textTheme.bodyText1,
      minLines: widget.minLine,
      maxLines: widget.maxLine,
      obscureText: widget.isPassword,
      keyboardType: widget.isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.orange, width: 2.0, style: BorderStyle.solid),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: AppColor.neutral3, width: 1.0, style: BorderStyle.solid),
        ),
        labelText: widget.label,
      ),
    );
  }
}
