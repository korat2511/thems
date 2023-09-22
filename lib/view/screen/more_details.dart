import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:themes/modal/const/const_color.dart';

import '../../modal/const/const_image.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ConstColor.background,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: ConstColor.primary1,
                ),
                Text(
                  "Cancel",
                  style: TextStyle(
                      fontSize: size.width * 0.055,
                      color: ConstColor.primary1,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.width * 0.2,
                  width: size.width * 0.25,
                  child: SvgPicture.asset(
                    ConstImage.logo,
                  ),
                ),
                Container(
                  height: size.width * 0.22,
                  width: size.width * 0.22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ConstColor.white),
                  child: QrImage(
                    data: "123456",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                    color: ConstColor.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "www.hi-here.com",
                  style: TextStyle(
                      color: ConstColor.white,
                      fontFamily: "Darker Grotesque",
                      fontWeight: FontWeight.w400,
                      fontSize: size.width * 0.052,
                      letterSpacing: 0.79),
                )
              ],
            ),
            SizedBox(
              height: size.width * 0.05,
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Text(
                      "Julie Smith",
                      style: TextStyle(
                        letterSpacing: 1.25,
                        fontFamily: "Dancing Script",
                        fontWeight: FontWeight.w700,
                        fontSize: size.width * 0.12,
                        color: ConstColor.white,
                      ),
                    ),
                    Text(
                      "Graphic Designer, Hi here",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "Darker Grotesque",
                          fontWeight: FontWeight.w400,
                          color: ConstColor.white,
                          fontSize: size.width * 0.052),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "About me: I am an UI/Ux designer \nwith more than 5 years of experience",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w400,
                          color: ConstColor.white,
                          fontSize: size.width * 0.045),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.call,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile no.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+91-9876543210",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.vector,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email i’d ",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "shrutijain@gmail.com",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.location,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "XYZ colony, Loream ipsum \nsksna djsknd  dsd, gurgaon, \nIndia",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.05,),
                    Text(
                      "Get In Touch",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                          color: ConstColor.white,
                          fontSize: size.width * 0.054),
                    ),
                    SizedBox(height: size.height * 0.05,),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.whatsapp,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Connect with me on whatsapp",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+91-9876543210",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.linkedin,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "follow me",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "julie-smith/user/myaccount",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 25,
                            width: 28,
                            child: SvgPicture.asset(
                              ConstImage.twitter,
                              fit: BoxFit.fill,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "follow me",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w400,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "julie-smith/user/myaccount",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                  color: ConstColor.white,
                                  fontSize: size.width * 0.045),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
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
