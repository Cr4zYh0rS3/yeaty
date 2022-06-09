import 'package:flutter/material.dart';
import 'package:yeaty/widgets/confirm_button.dart';

import '../../constants/colors.dart';

class LoginDetails extends StatefulWidget {
  const LoginDetails({Key? key}) : super(key: key);
  static const RouteName = '/login-details';

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    TextEditingController _emailController = TextEditingController();
    TextEditingController _pwdController = TextEditingController();
    TextEditingController _pwdcheckController = TextEditingController();
    bool isAgreed = false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Container(
              width: deviceSize.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: deviceSize.height * 0.035),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: deviceSize.width * 0.08,
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.035),
                  Text(
                    "Eposta adresinizi girin ve şifrenizi belirleyin",
                    style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealExtraBold', fontSize: deviceSize.width * 0.038),
                  ),
                  SizedBox(height: deviceSize.height * 0.04),
                  Container(
                    padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                    decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Eposta',
                          hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.015),
                  Container(
                    padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                    decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                    child: TextField(
                      controller: _pwdcheckController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Şifre',
                          hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.015),
                  Container(
                    padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                    decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                    child: TextField(
                      controller: _pwdcheckController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Şifre tekrar',
                          hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.01),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isAgreed,
                          onChanged: (bool? newvalue) {
                            setState(() {
                              isAgreed = newvalue!;
                            });
                          }),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Kaydınızı tamamlamak için ",
                                style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03),
                              ),
                              Text(
                                "Kullanıcı sözleşmesini",
                                style: TextStyle(color: kMainToneRed, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03),
                              ),
                            ],
                          ),
                          Text(
                            "kabul edin",
                            style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: deviceSize.height * 0.39),
                  ConfirmButton(route: '/home', isEnd: true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
