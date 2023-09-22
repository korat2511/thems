import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:themes/modal/const/const_color.dart';
import 'package:themes/modal/const/const_image.dart';
import 'package:themes/modal/const/text_style.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height / 2.75,
                    child: Image.asset(
                      ConstImage.background,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height,
                      width: size.width,
                      color: ConstColor.background,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top + size.height * 0.065 + 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                                height: 100,
                                child: Image.asset(
                                  ConstImage.logoBack,
                                )),
                            Positioned(
                                left: 65,
                                bottom: 32,
                                child: Image.asset(
                                  ConstImage.logoMain,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    CircleAvatar(
                      radius: size.height / 9,
                      child: ClipOval(
                        child: Image.asset(
                          ConstImage.user,
                          height: 220,
                          width: 220,
                        ),

                        // (controller.imageFile != null)
                        //     ? Image.file(
                        //   controller.imageFile!,
                        //   height: 120,
                        //   width: 120,
                        //   fit: BoxFit.cover,
                        // )
                        //     : Image.asset(
                        //   ConstImage.icon,
                        //   height: 121,
                        //   width: 121,
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Column(

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
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 2,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: ConstColor.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Graphics Designer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Darker Grotesque",
                                    fontWeight: FontWeight.w400,
                                    color: ConstColor.white,
                                    fontSize: size.width * 0.052),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: ConstColor.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: size.width * 0.35,
                          width: size.width * 0.35,
                          decoration: BoxDecoration(color: ConstColor.white),
                          child: QrImage(
                            data: "123456",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: size.width * 0.65,
                          decoration: BoxDecoration(
                            color: ConstColor.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3),
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFF2C66B8),
                                      shape: BoxShape.circle
                                    ),
                                    child: SvgPicture.asset(ConstImage.arrowRight,),
                                  ),
                                ],
                              ),
                              Expanded(child: Container(),),
                              SvgPicture.asset(ConstImage.mail),
                              Expanded(child: Container(),),
                              SvgPicture.asset(ConstImage.phone),
                              Expanded(child: Container(),),
                              SvgPicture.asset(ConstImage.message),
                              Expanded(child: Container(),),
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
