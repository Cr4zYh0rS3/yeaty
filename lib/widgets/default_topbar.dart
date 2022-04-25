import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DefaultTopbar extends StatelessWidget {
  final String title;
  const DefaultTopbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.11,
      color: kShadedDarkColorWhite,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.width * 0.02, right: deviceSize.width * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.045, color: kMainToneBlack),
              ),
              const Icon(Icons.search, color: kMainToneBlack),
            ],
          ),
        ),
      ),
    );
  }
}
