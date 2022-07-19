import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    TextEditingController searchController = TextEditingController();
    return Container(
      width: deviceSize.width,
      height: deviceSize.height * 0.18,
      color: kShadedDarkColorWhite,
      child: Column(
        children: [
          SizedBox(height: deviceSize.height * 0.035),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: deviceSize.width * 0.05, top: deviceSize.height * 0.01),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_sharp,
                    size: deviceSize.width * 0.08,
                    color: kMainToneBlack,
                  ),
                ),
              ),
              SizedBox(width: deviceSize.width * 0.06),
              Text(
                "Arama",
                style: TextStyle(color: kMainToneBlack, fontSize: deviceSize.width * 0.045, fontFamily: 'AirbnbCerealMedium'),
              ),
            ],
          ),
          SizedBox(height: deviceSize.height * 0.012),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceSize.width * 0.9,
                height: deviceSize.height * 0.065,
                child: TextField(
                  controller: searchController,
                  textInputAction: TextInputAction.send,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                    //hintText: 'Kafe, restoran, ürün arayın',
                    labelText: 'Kafe, restoran, ürün arayın',
                    labelStyle: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              //Icon(Icons.shuffle_rounded, color: kFoggyLightBlack),
            ],
          ),
        ],
      ),
    );
  }
}
