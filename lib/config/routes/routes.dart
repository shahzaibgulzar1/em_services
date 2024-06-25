import 'package:em_services/view/screens/auth/create_new_password.dart';
import 'package:em_services/view/screens/auth/forgot_password.dart';
import 'package:em_services/view/screens/auth/login_screen.dart';
import 'package:em_services/view/screens/auth/verification_screen.dart';
import 'package:em_services/view/screens/bottom_navbar/bottom_navbar.dart';
import 'package:em_services/view/screens/home_screen/defects_hazards.dart';
import 'package:em_services/view/screens/home_screen/list_submitted_toolbox_meeting.dart';
import 'package:em_services/view/screens/home_screen/permit_to_work.dart';
import 'package:em_services/view/screens/home_screen/profile_screen.dart';
import 'package:em_services/view/screens/home_screen/select_project_details.dart';
import 'package:em_services/view/screens/home_screen/inspection_screen.dart';
import 'package:em_services/view/screens/home_screen/toolbox_meeting_screen.dart';
import 'package:em_services/view/screens/home_screen/view_inspection_screen.dart';
import 'package:flutter/material.dart';

import '../../view/screens/home_screen/safety_inspection_checklist.dart';
import '../../view/screens/home_screen/safety_non_conformance.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  VerificationScreen.routeName: (context) => const VerificationScreen(),
  CreateNewPasswordScreen.routeName: (context) =>
      const CreateNewPasswordScreen(),
  BottomNavbarScreen.routeName: (context) => const BottomNavbarScreen(),
  SelectProjectDetails.routeName: (context) => const SelectProjectDetails(),
  DefectsHazardsScreen.routeName: (context) => const DefectsHazardsScreen(),
  InspectionScreen.routeName: (context) => const InspectionScreen(),
  SafetyInspectionChecklist.routeName: (context) =>
      const SafetyInspectionChecklist(),
  ViewInspectionScreen.routeName: (context) => const ViewInspectionScreen(),
  SafetyNonConformanceScreen.routeName: (context) =>
      const SafetyNonConformanceScreen(),
  ListSubmittedToolboxMeetingScreen.routeName: (context) =>
      const ListSubmittedToolboxMeetingScreen(),
  ToolboxMeetingScreen.routeName: (context) => const ToolboxMeetingScreen(),
  PermitToWorkScreen.routeName: (context) => const PermitToWorkScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
