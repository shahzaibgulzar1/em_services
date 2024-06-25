import 'package:em_services/view/screens/home_screen/profile_screen.dart';
import 'package:em_services/view/screens/home_screen/select_project.dart';
import 'package:flutter/material.dart';
import '/view/screens/home_screen/home_screen.dart';
import '/constants/color_constants.dart';
import '/view/widgets/common_image_view_widget.dart';
import '/business_layer/static_data.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});
  static const routeName = "Bottom-navbar-screen";

  @override
  _BottomNavbarScreenState createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SelectProjectScreen(),
    const Scaffold(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   leading: Builder(
      //     builder: (context) => IconButton(
      //       icon: const Icon(Icons.menu),
      //       onPressed: () {
      //         Scaffold.of(context).openDrawer();
      //       },
      //     ),
      //   ),
      // ),
      // drawer: buildDrawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: kcolorWhite,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          unselectedItemColor: kcolorWhite.withOpacity(0.8),
          selectedItemColor: kcolorWhite,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: List.generate(
            StaticData.bottomListItems.length,
            (index) => BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonImageView(
                    height: 25,
                    width: 25,
                    assetImageColor:
                        _currentIndex == index ? kPrimarycolor : kcolorDarkgrey,
                    imagePath: StaticData.bottomListItems[index]["imageUrl"]!,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index ? Colors.red : kcolorWhite,
                    ),
                  ),
                ],
              ),
              label: StaticData.bottomListItems[index]["title"],
            ),
          ),
        ),
      ),
    );
  }
}
