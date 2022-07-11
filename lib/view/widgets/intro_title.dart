import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class IntroTitle extends StatefulWidget {
  final String mainTitle;
  final String description;
  final String direction_name;
  final String direction_path;
  const IntroTitle({Key? key, required this.mainTitle, required this.description, required this.direction_name, required this.direction_path}) : super(key: key);

  @override
  State<IntroTitle> createState() => _IntroTitleState();
}

class _IntroTitleState extends State<IntroTitle> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: deviceSize.width * 0.04, left: deviceSize.width * 0.04, top: deviceSize.width * 0.02, bottom: deviceSize.height * 0.02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.mainTitle,
                style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', fontSize: deviceSize.width * 0.048, color: kMainToneBlack),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, widget.direction_path);
                },
                child: Text(
                  widget.direction_name,
                  style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.028, color: kMainToneBlack),
                ),
              ),
            ],
          ),
          SizedBox(height: deviceSize.height * 0.016),
          Text(
            widget.description,
            style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
          ),
        ],
      ),
    );
  }
}
