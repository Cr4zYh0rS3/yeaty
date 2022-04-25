import 'package:flutter/material.dart';
import 'package:yeaty/widgets/topbar_box.dart';

import '../constants/colors.dart';

class DiscoverTopbar extends StatelessWidget {
  const DiscoverTopbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.14,
      color: kShadedDarkColorWhite,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.width * 0.02, right: deviceSize.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Keşfet",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.045, color: kMainToneBlack),
                  ),
                  const Icon(Icons.search, color: kMainToneBlack),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.width * 0.025),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    TopbarBox(
                      boxname: "Size Özel",
                    ),
                    TopbarBox(
                      boxname: "Kahve",
                    ),
                    TopbarBox(
                      boxname: "Akşam Yemeği",
                    ),
                    TopbarBox(
                      boxname: "Kahvaltı",
                    ),
                    TopbarBox(
                      boxname: "Tatlı",
                    ),
                    TopbarBox(
                      boxname: "Açık Hava",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
