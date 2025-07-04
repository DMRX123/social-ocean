import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Social Ocean';

  // Zone types
  static const String zoneEducation = 'Education Zone';
  static const String zoneEntertainment = 'Entertainment Zone';
  static const String zoneMixed = 'Mixed Zone';

  // Badge titles
  static const List<String> badgeTitles = [
    'Star', 'King', 'Queen', 'VIP', 'Verified'
  ];

  // API endpoints (dummy for now)
  static const String baseApi = 'https://api.socialocean.dev/';
  static const String newsApi = '${baseApi}news';
  static const String yojnaApi = '${baseApi}yojnas';
}
// Constants
