import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';

class ConfirmButton extends StatefulWidget {
  final String title;
  final String route;
  final bool isEnd;
  const ConfirmButton({Key? key, required this.title, required this.route, required this.isEnd}) : super(key: key);

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: deviceSize.width * 0.02),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isValid = true;
            widget.isEnd == true ? Navigator.of(context).pushNamedAndRemoveUntil(widget.route, (Route<dynamic> route) => false) : Navigator.pushNamed(context, widget.route);
          });
        },
        child: Container(
          width: deviceSize.width * 0.9,
          height: deviceSize.width * 0.15,
          decoration: BoxDecoration(
            color: isValid == false ? kShadedDarkColorWhite : kMainToneRed,
            borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
          ),
          child: Center(
              child: Text(
            widget.title,
            style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
          )),
        ),
      ),
    );
  }
}
