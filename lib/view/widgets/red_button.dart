import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yeaty/constants/colors.dart';

class RedButton extends StatelessWidget {
  final width;
  final height;
  final text;

  const RedButton({
    Key? key,
    this.width,
    this.height,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: kLightToneRed),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: kShadedDarkColorWhite, fontFamily: "AirbnbCerealMedium"),
          ),
        ),
      ),
    );
  }
}
