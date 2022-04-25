import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants/colors.dart';

class CarouselImage extends StatefulWidget {
  final List imagePath;
  const CarouselImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  CarouselController carouselController = CarouselController();
  int _currentIndex = 0;
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Stack(children: [
      CarouselSlider.builder(
        carouselController: carouselController,
        itemCount: widget.imagePath.length,
        itemBuilder: (context, index, realindex) {
          return Container(
              width: deviceSize.width,
              child: Image(
                image: AssetImage(widget.imagePath[index]),
                fit: BoxFit.cover,
              ));
        },
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            _currentIndex = index;
            setState(() {});
          },
          initialPage: _currentIndex,
          height: deviceSize.height * 0.35,
          viewportFraction: 1,
        ),
      ),
      //Second Layer
      Center(
        child: Container(
          padding: EdgeInsets.only(top: deviceSize.height * 0.03),
          width: deviceSize.width * 0.95,
          height: deviceSize.height * 0.35,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () {
                carouselController.previousPage();
              },
              child: CircleAvatar(
                backgroundColor: kMainToneBlack.withOpacity(0.7),
                radius: deviceSize.width * 0.045,
                child: Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.02),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: kShadedDarkColorWhite,
                    size: deviceSize.width * 0.05,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                carouselController.nextPage();
              },
              child: CircleAvatar(
                backgroundColor: kMainToneBlack.withOpacity(0.7),
                radius: deviceSize.width * 0.045,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: kShadedDarkColorWhite,
                  size: deviceSize.width * 0.05,
                ),
              ),
            ),
          ]),
        ),
      ),
      //Third Layer
      SafeArea(
        child: Container(
          width: deviceSize.width,
          height: deviceSize.height * 0.35,
          padding: EdgeInsets.only(top: deviceSize.height * 0.01),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: deviceSize.width * 0.03, right: deviceSize.width * 0.58),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: kShadedDarkColorWhite,
                        radius: deviceSize.width * 0.055,
                        child: Icon(
                          Icons.arrow_back,
                          color: kFoggyLightBlack,
                          size: deviceSize.width * 0.06,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: kShadedDarkColorWhite,
                    radius: deviceSize.width * 0.055,
                    child: Icon(
                      Icons.share_outlined,
                      color: kFoggyLightBlack,
                      size: deviceSize.width * 0.05,
                    ),
                  ),
                  SizedBox(width: deviceSize.width * 0.02),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isliked = true;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: kShadedDarkColorWhite,
                      radius: deviceSize.width * 0.055,
                      child: Icon(
                        isliked == false ? IconData(0xe800, fontFamily: 'CustomIcon4', fontPackage: null) : IconData(0xe800, fontFamily: 'CustomIcon5', fontPackage: null),
                        color: kLightToneRed,
                        size: deviceSize.width * 0.05,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(color: kMainToneBlack.withOpacity(0.7), borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
        margin: EdgeInsets.only(top: deviceSize.height * 0.3, left: deviceSize.width * 0.85),
        width: deviceSize.width * 0.12,
        height: deviceSize.height * 0.035,
        child: Center(
            child: Text(
          "${(_currentIndex + 1).toString()}/${widget.imagePath.length.toString()}",
          style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', color: kLightColorWhite, fontSize: deviceSize.width * 0.035),
        )),
      ),
    ]);
  }
}
