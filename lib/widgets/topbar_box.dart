import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TopbarBox extends StatelessWidget {
  final String boxname;
  
  TopbarBox({Key? key, required this.boxname,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(deviceSize.width * 0.015),
      margin: EdgeInsets.only(right: deviceSize.width * 0.01),
      decoration: BoxDecoration(
        border: Border.all(color: kFoggyLightBlack),
        borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
      ),
      child: Text(
        boxname,
        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, color: kFoggyLightBlack),
      ),
    );
  }
}
