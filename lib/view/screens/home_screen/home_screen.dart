import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';

import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/tab_bar_view.dart';
import 'popular_project_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;
  var selectedTab = "Popular";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: buildDrawer(),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            MyTextField(
              prefixIcon: const Icon(Icons.search),
              suffixIcon: SizedBox(
                width: 30,
                child: Row(
                  children: [
                    Container(
                      height: 24,
                      width: 2,
                      color: kcolorLightPurple,
                    ),
                    const Icon(Icons.mic)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: TabBarWidget(
                    text: "Popular",
                    isSelected: selectedTab == "Popular",
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                        selectedTab = "Popular";
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TabBarWidget(
                    text: "Projects",
                    isSelected: selectedTab == "Projects",
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                        selectedTab = "Projects";
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
                child: IndexedStack(
              index: currentIndex,
              children: [
                const PopularProjectView(),
                const PopularProjectView(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
