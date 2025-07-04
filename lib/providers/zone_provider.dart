import 'package:flutter/material.dart';

class ZoneProvider with ChangeNotifier {
  String _selectedZone = 'Mixed'; // 'Education', 'Entertainment', 'Mixed'

  String get selectedZone => _selectedZone;

  void setZone(String zone) {
    _selectedZone = zone;
    notifyListeners();
  }

  bool isStudyMode = false;

  void toggleStudyMode(bool value) {
    isStudyMode = value;
    notifyListeners();
  }
}
// Zone Provider
