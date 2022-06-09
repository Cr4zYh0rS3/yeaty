import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * 0.9,
      margin: EdgeInsets.only(bottom: deviceSize.height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: deviceSize.width * 0.06,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("assets/images/randomPerson.jpg"),
              ),
              SizedBox(width: deviceSize.width * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "crazyhorse",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kMainToneBlack, fontSize: deviceSize.width * 0.035),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: kMainToneRed,
                        size: deviceSize.width * 0.045,
                      ),
                      Icon(
                        Icons.star,
                        color: kMainToneRed,
                        size: deviceSize.width * 0.045,
                      ),
                      Icon(
                        Icons.star,
                        color: kMainToneRed,
                        size: deviceSize.width * 0.045,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: deviceSize.height * 0.01),
          Text(
            "Başlangıç, ara sıcak, ana yemek her şey mükemmeldi. Masaya ilgi alaka muazzam çok keyifli bir akşamdı. Müzik seçimleri çok hoş. Tek eksik geç yapılan servis onun dışında kesinlikle öneririm.",
            style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kFoggyLightBlack, fontSize: deviceSize.width * 0.035),
          ),
        ],
      ),
    );
  }
}
