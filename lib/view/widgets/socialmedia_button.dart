import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';

class SocialMediaButton extends StatelessWidget {
  final Icon icon;
  final String title;
  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devicesize = MediaQuery.of(context).size;
    return Container(
      height: devicesize.width * 0.12,
      decoration: BoxDecoration(
        border: Border.all(color: kMainToneBlack),
        borderRadius: BorderRadius.circular(devicesize.width * 0.01),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: devicesize.width * 0.005),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title,
              style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: devicesize.width * 0.033),
            ),
          ],
        ),
      ),
    );
  }
}
