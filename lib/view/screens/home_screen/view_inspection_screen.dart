import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/checklist_content.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/add_on.dart';
import '../../widgets/general_tabbar_view.dart';

class ViewInspectionScreen extends StatefulWidget {
  const ViewInspectionScreen({super.key});
  static const routeName = "view-inspection-screen";

  @override
  _ViewInspectionScreenState createState() => _ViewInspectionScreenState();
}

class _ViewInspectionScreenState extends State<ViewInspectionScreen>
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
    return Scaffold(
      appBar: homeAppbar(context, "View", () {}),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            const SizedBox(height: 24),
            TabBar(
              controller: _tabController,
              indicatorColor: kPrimarycolor,
              dividerColor: Colors.transparent,
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
                    text: "Checklist",
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
                    text: "Add on",
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
                children: const [
                  GeneralTabvbarView(),
                  ChecklistContent(),
                  AddOn()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
