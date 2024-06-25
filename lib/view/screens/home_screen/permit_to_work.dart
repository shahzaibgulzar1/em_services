import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../widgets/my_text.dart';

class PermitToWorkScreen extends StatefulWidget {
  const PermitToWorkScreen({super.key});
  static const routeName = "Permit to_work";

  @override
  State<PermitToWorkScreen> createState() => _PermitToWorkScreenState();
}

class _PermitToWorkScreenState extends State<PermitToWorkScreen> {
  int supervisorsCount = 0;
  int workmenCount = 0;

  void _incrementCount(String type) {
    setState(() {
      if (type == 'supervisors') {
        supervisorsCount++;
      } else if (type == 'workmen') {
        workmenCount++;
      }
    });
  }

  void _decrementCount(String type) {
    setState(() {
      if (type == 'supervisors' && supervisorsCount > 0) {
        supervisorsCount--;
      } else if (type == 'workmen' && workmenCount > 0) {
        workmenCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: homeAppbar(context, 'Permit To Work', () {}),
      body: Padding(
        padding: kdefaultMargin,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyText(
                text: "Conducted At",
                color: kcolorViolet,
                paddingTop: 24,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              MyTextField(
                hintText: '9182 4839',
              ),
              const MyText(
                text: " Phone Number",
                color: kcolorViolet,
                paddingTop: 24,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              MyTextField(
                borderRadius: 5,
                hintText: '9182 4839',
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyText(
                    text: "Work Start Date",
                    color: kcolorViolet,
                    paddingTop: 24,
                    paddingBottom: 16,
                    weight: FontWeight.bold,
                    size: 18,
                  ),
                  MyText(
                    text: "Work end Date",
                    color: kcolorViolet,
                    paddingTop: 24,
                    paddingBottom: 16,
                    weight: FontWeight.bold,
                    size: 18,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.43,
                    child: MyTextField(
                      borderRadius: 5,
                      hintText: '02/06/2024',
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Expanded(
                    child: MyTextField(
                      borderRadius: 5,
                      hintText: "02/06/2024",
                    ),
                  ),
                ],
              ),
              const MyText(
                text: "Proposed Work End Date",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              SizedBox(
                width: screenWidth * 0.43,
                child: MyTextField(
                  borderRadius: 5,
                  hintText: '02/06/2024',
                ),
              ),
              const MyText(
                text: "Proposed Work End Time",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              SizedBox(
                width: screenWidth * 0.43,
                child: MyTextField(
                  borderRadius: 5,
                  isReadOnly: true,
                  hintText: '13:38',
                ),
              ),
              const MyText(
                text: "Description of Job",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              MyTextField(
                borderRadius: 5,
                hintText: 'type here...',
                maxLines: 4,
              ),
              ////////////.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CounterWidget(
                    title: 'No. of Supervisors',
                    count: supervisorsCount,
                    onIncrement: () => _incrementCount('supervisors'),
                    onDecrement: () => _decrementCount('supervisors'),
                  ),
                  const SizedBox(height: 20),
                  CounterWidget(
                    title: 'No. of Workmen',
                    count: workmenCount,
                    onIncrement: () => _incrementCount('workmen'),
                    onDecrement: () => _decrementCount('workmen'),
                  ),
                ],
              ),

              ///
              /////
              const MyText(
                text: "Location",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              MyTextField(
                isReadOnly: true,
                hintText: 'Location',
              ),
              const MyText(
                text: "Status",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
              MyTextField(
                hintText: 'Submitted/Draft',
              ),
              const MyText(
                text: "Status",
                color: kcolorViolet,
                paddingTop: 16,
                paddingBottom: 16,
                weight: FontWeight.bold,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final String title;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  CounterWidget({
    required this.title,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(
          text: title,
          weight: FontWeight.bold,
          color: kcolorViolet,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onDecrement,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kcolorGrey,
                ),
                child: const Icon(Icons.remove),
              ),
            ),
            const SizedBox(width: 10),
            MyText(
              text: '$count',
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: onIncrement,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kcolorGrey,
                ),
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
