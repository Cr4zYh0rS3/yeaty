import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class BlogBox extends StatelessWidget {
  final String imageAdress;
  final String title;
  final String description;
  final String author_image_path;
  final String author_name;
  final String author_title;
  const BlogBox({Key? key, required this.imageAdress, required this.title, required this.description, required this.author_image_path, required this.author_name, required this.author_title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(deviceSize.width * 0.04, deviceSize.height * 0.01, deviceSize.width * 0.04, deviceSize.height * 0.01),
      padding: EdgeInsets.only(bottom: deviceSize.width * 0.02),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: kShadedDarkColorWhite,
          width: deviceSize.width * 0.005,
        ),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: deviceSize.width * 0.4,
              height: deviceSize.height * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
                child: Image(
                  image: AssetImage(imageAdress),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            width: deviceSize.width * 0.5,
            height: deviceSize.height * 0.25,
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                ),
                SizedBox(
                  height: deviceSize.height * 0.015,
                ),
                Text(
                  description,
                  style: TextStyle(fontFamily: 'AirbnbCerealLight', fontSize: deviceSize.width * 0.03, color: kMainToneBlack),
                ),
                SizedBox(height: deviceSize.height * 0.02),
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: deviceSize.height * 0.023,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(author_image_path),
                      ),
                      SizedBox(width: deviceSize.width * 0.02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            author_name,
                            style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                          ),
                          Text(
                            author_title,
                            style: TextStyle(fontFamily: 'AirbnbCerealLight', fontSize: deviceSize.width * 0.025, color: kMainToneBlack),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
