import 'package:flutter/material.dart';
import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:em_services/business_layer/static_data.dart';

class ChecklistContent extends StatefulWidget {
  const ChecklistContent({super.key});

  @override
  _ChecklistContentState createState() => _ChecklistContentState();
}

class _ChecklistContentState extends State<ChecklistContent> {
  bool _isDropdownVisible = false;
  int? _selectedIndex;
  Map<int, String> _selectedOptions = {};

  void _toggleDropdown(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _isDropdownVisible = !_isDropdownVisible;
      } else {
        _isDropdownVisible = true;
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    List<Map<String, String>> assessmentList = [
      {'title': 'Risk Assessment for Work Activity'},
      {'title': 'Safe Work Procedure for Work Activity'},
      {
        'title':
            'Warning Signs at Lift Lobby, Machine Room, Landings* for Public'
      },
      {
        'title':
            'Emergency response - Key contact, assembly point and procedure'
      },
      {'title': 'Check on Team/Employee* Self-Check Daily Checklist'},
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            children: List.generate(
              StaticData.viewChecklistContent.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 8, right: 8),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => _toggleDropdown(index),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: StaticData.viewChecklistContent[index]
                                    ['name']!,
                                size: 16,
                                weight: FontWeight.bold,
                              ),
                              const Spacer(),
                              const Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                          const Divider(color: kcolorDarkgrey),
                        ],
                      ),
                    ),
                    if (_isDropdownVisible && _selectedIndex == index)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: assessmentList.map((assessment) {
                            int sectionIndex =
                                assessmentList.indexOf(assessment);
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                    text: assessment['title']!,
                                    size: screenHeight *
                                        0.02, // 2% of screen height
                                    weight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  Row(
                                    children: [
                                      Radio<String>(
                                        value: 'Yes',
                                        activeColor: kPrimarycolor,
                                        fillColor: WidgetStateProperty.all(
                                            kPrimarycolor),
                                        groupValue:
                                            _selectedOptions[sectionIndex],
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedOptions[sectionIndex] =
                                                value!;
                                          });
                                        },
                                      ),
                                      const MyText(
                                        text: 'Yes',
                                        size: 16,
                                      ),
                                      Radio<String>(
                                        value: 'No',
                                        fillColor: WidgetStateProperty.all(
                                            kPrimarycolor),
                                        groupValue:
                                            _selectedOptions[sectionIndex],
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedOptions[sectionIndex] =
                                                value!;
                                          });
                                        },
                                      ),
                                      const MyText(
                                        text: 'No',
                                        size: 16,
                                      ),
                                      Radio<String>(
                                        value: 'N/A',
                                        fillColor: WidgetStateProperty.all(
                                            kPrimarycolor),
                                        groupValue:
                                            _selectedOptions[sectionIndex],
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedOptions[sectionIndex] =
                                                value!;
                                          });
                                        },
                                      ),
                                      const MyText(
                                        text: 'N/A',
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
