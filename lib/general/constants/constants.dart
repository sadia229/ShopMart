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
  static const String token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNTkxNzg1ZGJjNGNhNjk2YTk0OGFlMDIwZDE3ZmZhM2FiMTIxMWY3ZDFkYmRiNThmNzVmYTM2M2Q2ZDNjOGI0ZDliMTg5NWZmYTllMzM1OTkiLCJpYXQiOjE2NzU2ODAwNzkuODk4MDQ0MTA5MzQ0NDgyNDIxODc1LCJuYmYiOjE2NzU2ODAwNzkuODk4MDQ2OTcwMzY3NDMxNjQwNjI1LCJleHAiOjE3MDcyMTYwNzkuODk1ODQ4MDM1ODEyMzc3OTI5Njg3NSwic3ViIjoiMyIsInNjb3BlcyI6W119.m71QSQ9vh_Q4nxi0hHyBGbbwPHCPx83V8JLRYPOE1jLYTi_yfZeO_Rr1uuV5IjtV9Gb-o7DwpsdroLNoaJ6epVvmU95wR2kFiQuafU6RIQlO1bQetk14viCZsptbiGCMuogARrT0qBQR0n7zIsIbv51Cy7FUnnFZh9lBJyl3b7MdoeXtuxT4VKmqm02uzZXOF3auZNZYpqv4B9sBPqawC3-FH3EuQJVBxwN41QQYPa8utvZNTnqg5CBVMG-yGvjbKIE-uKipkU4kwQAa_l-LPZsmZv904Ysd75kxJjwiFcCJHvSpfeF5zon_QUHPOx3B79qlhVSwrWalRsajx4ZP_QKhTy7ye29wxx_7uT-vhBzZDBkXA_fcuW2SWVDHJsM0a8Cp-Uv9-pLYg7V2zmyEjMErj-dYfnhNtUFpplgA6T3Q3GYKAVu6Qix_OLBthwdLA1_p2FiXBeDIer2Ity4H-0c6f4pK74vS42l8WN4A12ckYK5Ivxe5-PEFDEYfYTr_PXPtIQ0jIrjiwXFWyI57v1FrU2NF36WiPZHgLZ5HiW45bL3UBZyqW1ETw_j2A_Hgoy1IrSs3SrkMCvXZygaEdDO0aAGaEoQzlIHAv5E4JEGnHEIe1NakgIttaskHexy0Of2f1PNKMFBSS2FA1t7PUKEC69ny1UioJ9qxSM8tJlg";
}

//custom painter
