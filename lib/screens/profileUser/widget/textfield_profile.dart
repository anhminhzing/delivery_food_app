import 'package:delivery_food_app/theme/appColor.dart';
import 'package:flutter/material.dart';

class TextFieldProfile extends StatefulWidget {
  final String label;
  final TextEditingController textController;
  final bool isNumber;

  const TextFieldProfile({
    Key key,
    this.label,
    this.textController,
    this.isNumber = false,
  }) : super(key: key);
  @override
  _TextFieldProfileState createState() => _TextFieldProfileState();
}

class _TextFieldProfileState extends State<TextFieldProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.borderInput,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType:
            widget.isNumber ? TextInputType.number : TextInputType.text,
        cursorHeight: 16,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: Theme.of(context).textTheme.caption.copyWith(
                fontWeight: FontWeight.w600,
              ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(
            left: 15,
            bottom: 10,
            top: 10,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          filled: false,
          // isCollapsed: true,
        ),
      ),
    );
  }
}
