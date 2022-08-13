import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTypeWidget extends StatelessWidget {
  final String content;
  final VoidCallback onTap;

  const PasswordTypeWidget(
      {Key? key, required this.content, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 50.w,
            vertical: 50.h,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 10.h,
          ),
          child: Text(content),
        ),
      ),
    );
  }
}
