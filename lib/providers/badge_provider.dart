import 'package:flutter/material.dart';

class BadgeProvider with ChangeNotifier {
  bool _picOfDay = false;
  bool _picOfWeek = false;
  bool _picOfMonth = false;
  bool _picOfYear = false;

  bool get hasPicOfDay => _picOfDay;
  bool get hasPicOfWeek => _picOfWeek;
  bool get hasPicOfMonth => _picOfMonth;
  bool get hasPicOfYear => _picOfYear;

  void setPicOfDay(bool value) {
    _picOfDay = value;
    notifyListeners();
  }

  void setPicOfWeek(bool value) {
    _picOfWeek = value;
    notifyListeners();
  }

  void setPicOfMonth(bool value) {
    _picOfMonth = value;
    notifyListeners();
  }

  void setPicOfYear(bool value) {
    _picOfYear = value;
    notifyListeners();
  }

  bool get hasAllBadges =>
      _picOfDay && _picOfWeek && _picOfMonth && _picOfYear;

  bool get isVerified => hasAllBadges;
}
// Badge Provider
