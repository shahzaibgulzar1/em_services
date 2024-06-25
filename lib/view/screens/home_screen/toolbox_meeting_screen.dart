import 'package:em_services/business_layer/static_data.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/app_button.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../widgets/common_image_view_widget.dart';
import '../../widgets/my_text.dart';
import '../../widgets/tool_box_meeting_general.dart';

class ToolboxMeetingScreen extends StatefulWidget {
  const ToolboxMeetingScreen({super.key});
  static const routeName = 'toolbox-meeting-screen';

  @override
  State<ToolboxMeetingScreen> createState() => _ToolboxMeetingScreenState();
}

class _ToolboxMeetingScreenState extends State<ToolboxMeetingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: homeAppbar(context, "Toolbox meeting", () {}),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            const SizedBox(height: 24),
            TabBar(
              controller: _tabController,
              indicatorColor: kPrimarycolor,
              dividerColor: kcolorDarkgrey,
              tabs: [
                Tab(
                  child: MyText(
                    text: "General",
                    fontFamily: "Raleway",
                    weight: FontWeight.bold,
                    size: 18,
                    color: _tabController.index == 0
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
                Tab(
                  child: MyText(
                    text: "Topics",
                    weight: FontWeight.bold,
                    fontFamily: "Raleway",
                    size: 18,
                    color: _tabController.index == 1
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
                Tab(
                  child: MyText(
                    text: "Workers",
                    weight: FontWeight.bold,
                    fontFamily: "Raleway",
                    size: 18,
                    color: _tabController.index == 2
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ToolBoxMeetingGeneral(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  ToolboxMeetingTopic(screenHeight: screenHeight),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          text: "Add Worker",
                          color: kcolorViolet,
                          paddingTop: 24,
                          paddingBottom: 16,
                          weight: FontWeight.bold,
                          size: 18,
                        ),
                        Container(
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: kcolorGrey1,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: kPrimarycolor),
                          ),
                          child: const Center(
                            child: const MyText(
                              text: 'Scan id',
                              color: Color(0xFF00A0E1),
                              size: 16,
                              fontFamily: 'Raleway',
                              weight: FontWeight.w700,
                              letterSpacing: 0.48,
                            ),
                          ),
                        ),
                        const MyText(
                          text: "Feedback from Workers",
                          color: kcolorViolet,
                          paddingTop: 16,
                          paddingBottom: 16,
                          weight: FontWeight.bold,
                          size: 18,
                        ),
                        MyTextField(
                          maxLines: 5,
                          borderRadius: 20,
                          hintText: "Type here...",
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: AppButton(onTap: () {}, title: "Submit"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolboxMeetingTopic extends StatelessWidget {
  const ToolboxMeetingTopic({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Expanded(
            child: ListView.builder(
          itemCount: StaticData.checklistItemsToolMeeting.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Expanded(
                    child: MyText(
                      text: StaticData.checklistItemsToolMeeting[index],
                      size: 12,
                    ),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                ],
              ),
            );
          },
        )),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24),
          child: AppButton(onTap: () {}, title: '(1) Selected'),
        )
      ],
    );
  }
}
