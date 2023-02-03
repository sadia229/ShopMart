import 'package:flutter/cupertino.dart';
import 'package:shopmart/general/constants/asset_path.dart';

import '../../apps/home/widgets/test.dart';

List<String> category = [
  'Men',
  'Women',
  'Beauty',
  'Baby',
  'Diet',
  'Groceries',
  'pets',
  'Sports',
];

List<String> categoryImage = [
  AssetPath.men,
  AssetPath.women,
  AssetPath.beauty,
  AssetPath.babies,
  AssetPath.diet,
  AssetPath.groceries,
  AssetPath.pets,
  AssetPath.sports,
];

List<String> allCategory = [
  'Men',
  'Women',
  'Beauty',
  'Baby',
  'Diet',
  'Groceries',
  'pets',
  'Sports',
  'Sanitizer',
  'Nature',
];

List<String> allCategoryImage = [
  AssetPath.men,
  AssetPath.women,
  AssetPath.beauty,
  AssetPath.babies,
  AssetPath.diet,
  AssetPath.groceries,
  AssetPath.pets,
  AssetPath.sports,
  AssetPath.sanitizer,
  AssetPath.nature,
];

List<String>promotionalBanners = [
  AssetPath.banner1,
  AssetPath.banner2,
  AssetPath.banner3,
  AssetPath.banner4,
  AssetPath.banner5,
];

List<Widget> promotionalBannersPages = [
  const Page1(),
  const Page2(),
  const Page3(),
  const Page4(),
  const Page5(),
];

//
// List<String> drawerNames = [
//   'প্রোফাইল',
//   'দৈনন্দিন খরচ',
//   'অভিযোগ',
//   'সাবস্ক্রিপশন',
//   'টার্মস এন্ড কন্ডিশন',
//   'প্রাইভেসি পলিসি',
// ];
//
// List<String> drawerImage = [
//   AssetPath.dailyExpense,
//   AssetPath.dprofile,
//   AssetPath.dcomplain,
//   AssetPath.dsubscription,
//   AssetPath.dterms,
//   AssetPath.dprivacy,
// ];
//

//
// List<Widget> menuPages = [
//   const BillCollectionScreen(),
//   //const CashTransferScreen(),
//   const CashTransferDetails(),
//   const ReportScreen(),
//   // const ComplainScreen(),
// ];
// List<Widget> drawerPages = [
//   const ProfileScreen(),
//   const DailyExpenseScreen(),
//   const ComplainScreen(),
//   const SubscriptionScreen(),
//   const TermsScreen(),
//   const PrivacyPolicyScreen(),
// ];

class Constants {
  static const String authToken = 'authToken';
  static const String loggedIn = 'LOGGED_IN';
}

//custom painter
