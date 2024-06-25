import 'package:em_services/business_layer/static_data.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../widgets/my_text.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  static const routeName = "profile-screen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switchValue = false;
  List<String> dynaicfileName = [
    'Safety Certificates',
    ' CSOC',
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: AppBar(
            backgroundColor: kPrimarycolor,
            elevation: 0,
            leadingWidth: 80,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      "assets/images/back_home_.png",
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            title: const MyText(
              text: "Profile",
              color: kcolorWhite,
              size: 20,
              weight: FontWeight.w700,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/logout.png')),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: kdefaultMargin,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.21,
                        width: screenHeight * 0.21,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 0),
                              color: Colors.black.withOpacity(0.06),
                              spreadRadius: 4,
                            ),
                          ],
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/person_image.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0, // Changed from -12 to 0
                        child: Image.asset(
                          "assets/images/stack_image.png",
                          fit: BoxFit.cover,
                          height: screenHeight * 0.07,
                          width: screenHeight * 0.07,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(
                    text: "Philippe Troussier",
                    color: kcolorViolet,
                    weight: FontWeight.bold,
                    size: 18,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/edit_name.png",
                      height: 24,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "(Electrician)",
                    color: kcolorViolet,
                    size: 16,
                  ),
                ],
              ),
              Container(
                height: screenHeight * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kcolorWhite, width: 1),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      text: "Personal Info",
                      color: kcolorViolet,
                      paddingTop: 16,
                      size: 16,
                      weight: FontWeight.bold,
                      fontFamily: "DM Sans",
                    ),
                    const Divider(
                      color: kcolorGrey,
                      height: 4,
                    ),
                    Wrap(
                      children: List.generate(
                        StaticData.profileList.length,
                        (index) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.02),
                              child: Row(
                                children: [
                                  Image.asset(
                                    height: 25,
                                    fit: BoxFit.cover,
                                    width: 25,
                                    StaticData.profileList[index]['image']!,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: StaticData.profileList[index]
                                              ['title']!,
                                          size: 16,
                                          fontFamily: "DM Sans",
                                        ),
                                        MyText(
                                            text: StaticData.profileList[index]
                                                ['about']!)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(
                              height: 6,
                              color: kcolorGrey,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ), //
              const MyText(
                text: "Certificates",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                size: 16,
                weight: FontWeight.bold,
                fontFamily: "DM Sans",
              ),
              const Divider(
                color: kcolorGrey,
                height: 8,
              ),
              Container(
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kcolorWhite, width: 1),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Wrap(
                      children: List.generate(
                        2,
                        (index) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: screenHeight * 0.02),
                              child: Row(
                                children: [
                                  Image.asset(
                                    height: 25,
                                    fit: BoxFit.cover,
                                    width: 25,
                                    'assets/images/file.png',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: dynaicfileName[index]!,
                                          size: 16,
                                          fontFamily: "DM Sans",
                                        ),
                                        const MyText(text: 'PDF_DOC')
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xffC1C7D0),
                                      ))
                                ],
                              ),
                            ),
                            const Divider(
                              height: 6,
                              color: kcolorGrey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kcolorGrey1,
                      border: Border.all(
                        width: 1.4,
                        color: const Color(0xff979797),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline,
                            color: Color(0xff979797),
                          ),
                        ),
                        const MyText(
                          text: "Upload Document",
                          color: Color(0xff979797),
                          size: 16,
                          weight: FontWeight.bold,
                          fontFamily: "DM Sans",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const MyText(
                text: "Notifications",
                color: kcolorViolet,
                paddingTop: 16,
                size: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                fontFamily: "DM Sans",
              ),
              const Divider(
                color: kcolorGrey,
                height: 12,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: screenHeight * 0.32,
                decoration: BoxDecoration(
                  color: kcolorWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kcolorGrey, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Color(0xff979797),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Notifications",
                                      size: 16,
                                      fontFamily: "DM Sans",
                                    ),
                                    MyText(
                                        text: 'You will receive daily updates'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: _switchValue,
                            onChanged: (val) {
                              setState(() {
                                _switchValue = val;
                              });
                            },
                            activeColor: Colors.orange,
                            inactiveThumbColor: const Color(0xff979797),
                            inactiveTrackColor:
                                const Color(0xff979797).withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Color(0xff979797),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      text: "Promotional Notifications",
                                      size: 16,
                                      fontFamily: "DM Sans",
                                    ),
                                    MyText(
                                        text: 'Get notified when promotions'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: _switchValue,
                            onChanged: (val) {
                              setState(() {
                                _switchValue = val;
                              });
                            },
                            activeColor: Colors.orange,
                            activeTrackColor: const Color(0xff979797),
                            inactiveThumbColor: const Color(0xff979797),
                            inactiveTrackColor:
                                const Color(0xff979797).withOpacity(0.3),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
