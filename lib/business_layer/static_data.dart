import 'package:em_services/view/screens/home_screen/defects_hazards.dart';
import 'package:em_services/view/screens/home_screen/permit_to_work.dart';
import 'package:em_services/view/screens/home_screen/toolbox_meeting_screen.dart';

import '../view/screens/home_screen/inspection_screen.dart';

class StaticData {
  static const viewChecklistContent = [
    {
      "name": "Communication",
    },
    {
      "name": "Permit-To-Work",
    },
    {
      "name": "Personal Protection Equipment",
    },
    {
      "name": "Existing Ladders",
    },
    {
      "name": "Scaffolds",
    },
    {
      "name": "General Lift Safety",
    },
    {
      "name": "Lift Car Controller",
    },
  ];
  static const appDrawerList = [
    {
      "imageUrl": "assets/images/home.png",
      "name": "Home",
      "about": "Lorem ipsum",
    },
    {
      "imageUrl": "assets/images/toolbox_meeting.png",
      "name": "Toolbox Meeting",
      "about": "Lorem ipsum",
    },
    {
      "imageUrl": "assets/images/safety.png",
      "name": "Safety",
      "about": "Lorem ipsum",
    },
    {
      "imageUrl": "assets/images/permit.png",
      "name": "Work To Permit",
      "about": "Lorem ipsum",
    }
  ];
  static const safetyNonConformanceList = [
    {
      "imageUrl": "assets/images/inspector.png",
      "name": "Select Inspector",
    },
    {
      "imageUrl": "assets/images/subcontractor.png",
      "name": "Select Subcontractor User",
    },
    {
      "imageUrl": "assets/images/gps_location.png",
      "name": "Get GPS Location",
    },
  ];
  static const viewInspectionList = [
    {
      "imageUrl": "assets/images/inspector.png",
      "name": "Select Inspector",
    },
    {
      "imageUrl": "assets/images/subcontractor.png",
      "name": "Select Subcontractor",
    },
    {
      "imageUrl": "assets/images/gps_location.png",
      "name": "Get GPS Location",
    },
    {
      "imageUrl": "assets/images/select_lift.png",
      "name": "Select Liftt",
    }
  ];
  static const bottomListItems = [
    {"imageUrl": "assets/images/home_navbar.png", "title": "Home"},
    {"imageUrl": "assets/images/certificate.png", "title": "Certificate"},
    {"imageUrl": "assets/images/notification.png", "title": "Notification"},
    {"imageUrl": "assets/images/profile.png", "title": "Profile"},
  ];
  static const homeBgInfo = [
    {
      "image": "assets/images/home_bg.png",
      "title": "Safety Related News",
      "description":
          "Appended here with is the latest news article on the recent incident",
      "category": "Category 1"
    },
    {
      "image": "assets/images/home_bg.png",
      "title": "Technology Updates",
      "description": "Latest advancements in technology...",
      "category": "Category 2"
    },
    {
      "image": "assets/images/home_bg.png",
      "title": "Health & Wellness",
      "description": "Tips and tricks for a healthier life...",
      "category": "Category 3"
    },
  ];
  static const profileList = [
    {
      "title": "Gender",
      "image": "assets/images/contect.png",
      'about': "male/female"
    },
    {
      "title": "Date of Birth",
      "image": "assets/images/dob.png",
      'about': "10/12/1999"
    },
    {
      "title": "Contact Number",
      "image": "assets/images/ph_number.png",
      'about': "+22200000000"
    },
    {
      "title": "Nationality",
      "image": "assets/images/nationality.png",
      'about': "Dubia"
    },
  ];
  static const categoriesList = [
    {
      'title': 'PTW',
      'imageUrl': 'assets/images/ptw.png',
      "routes": PermitToWorkScreen.routeName
    },
    {
      'title': 'Safety\n Infringements',
      'imageUrl': 'assets/images/safety_infringements.png',
      "routes": DefectsHazardsScreen.routeName
    },
    {
      'title': 'Defects &\nIncidents',
      'imageUrl': 'assets/images/defects_and_incidents.png',
      "routes": DefectsHazardsScreen.routeName
    },
    {
      'title': 'Inspections',
      'imageUrl': 'assets/images/inspections.png',
      "routes": InspectionScreen.routeName,
    },
    {
      'title': 'Toolbox\nMeeting',
      'imageUrl': 'assets/images/toolbox_meeting.png',
      "routes": ToolboxMeetingScreen.routeName
    }
  ];
  static const checklistItemsToolMeeting = [
    "Eye Protection",
    "Respiratory Protection",
    "Hearing Conservation",
    "Inspection & Use of PPE",
    "Hazards Involving Corrosive Substance",
    "Safe Operation of Machinery",
    "Cutting & Laceration Hazard",
    "Hazards involving Hot Works",
    "Hazards involving Lifting Operation",
    "Overhead & Falling Object Hazards",
    "Falling from height hazard",
    "Usage of Scaffold",
    "Electrical Hazard",
    "Safe use of Explosive Powered Tools",
    "Tripping & Slipping Hazards",
    "Housekeeping",
    "Proper Waste Disposal",
    "Chemical Spillage",
    "Emergency Preparedness",
    "OSH Policy / Objectives",
    "Risk Assessments",
    "Other",
  ];
}
