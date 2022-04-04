import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';

class MyCodesView extends StatefulWidget {
  const MyCodesView({Key? key}) : super(key: key);

  @override
  State<MyCodesView> createState() => _MyCodesViewState();
}

class _MyCodesViewState extends State<MyCodesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: const [
          Text(
            "QR Kodlarım",
            style: TextStyle(
              color: kMainToneBlack,
              fontFamily: "AirbnbCerealBold",
            ),
          ),
          Spacer(),
          Icon(Icons.qr_code, color: Colors.black),
        ],
      )),
      body: Column(
        children: [Image.asset("assets/images/cafeImage6.jpg")],
      ),
    );
  }
}
