import 'package:em_services/business_layer/static_data.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:flutter/material.dart';
import '../../../constants/color_constants.dart';
import '../../widgets/my_text.dart';

class PopularProjectView extends StatefulWidget {
  const PopularProjectView({super.key});

  @override
  _PopularProjectViewState createState() => _PopularProjectViewState();
}

class _PopularProjectViewState extends State<PopularProjectView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Stack(
            children: [
              SizedBox(
                height: 165,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: StaticData.homeBgInfo.length,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 165,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(
                              StaticData.homeBgInfo[index]['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF1E1E1E).withOpacity(0.64),
                              const Color(0xFFA8A8A8),
                            ],
                            stops: const [0.064, 0.8332],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: StaticData.homeBgInfo[index]['title']!,
                              paddingLeft: 16,
                              fontFamily: "Raleway",
                              color: kcolorWhite,
                              weight: FontWeight.bold,
                              size: 18,
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: MyText(
                                      color: kcolorWhite,
                                      text: StaticData.homeBgInfo[index]
                                          ['description']!,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    height: 32,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: kPrimarycolor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: StaticData.homeBgInfo[index]
                                            ['category']!,
                                        color: kcolorWhite,
                                        size: 10,
                                        weight: FontWeight.bold,
                                        fontFamily: "Raleway",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              StaticData.homeBgInfo.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 8,
                  width: _currentIndex == index ? 32 : 8,
                  decoration: const BoxDecoration(
                    color: kPrimarycolor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const MyText(
            text: "Recommended",
            color: kcolorViolet,
            weight: FontWeight.bold,
            size: 18,
            paddingBottom: 16,
          ),
          Wrap(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: kcolorGrey1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonImageView(
                        height: 80,
                        width: 100,
                        radius: 10,
                        imagePath: 'assets/images/recommding.png',
                      ),
                      const SizedBox(width: 8), // Add some spacing
                      const Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the start
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MyText(
                                text: "Read it on our blog",
                                weight: FontWeight.w600,
                                size: 16,
                                color: Color(0xff252B5C),
                              ),
                              SizedBox(
                                  height: 4), // Add some spacing between texts
                              Flexible(
                                child: MyText(
                                  text:
                                      "Read a selection of opinion pieces from world-class journalists.",
                                  color: Color(0xff252B5C),
                                  fontFamily: "Raleway",
                                  size: 12,
                                ),
                              ),
                              MyText(
                                text: "Posted on 3 minute ago",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
