import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _username = '';
  String _role = ''; // 'Student', 'Reel Maker', etc.
  int _followers = 0;
  bool _isImportant = false;

  String get username => _username;
  String get role => _role;
  int get followers => _followers;
  bool get isImportant => _isImportant;

  void setUser(String name, String role, int followers) {
    _username = name;
    _role = role;
    _followers = followers;
    notifyListeners();
  }

  void markAsImportant(bool value) {
    _isImportant = value;
    notifyListeners();
  }

  String getBadge() {
    if (_followers >= 10000) return 'VIP';
    if (_followers >= 5000) return 'King';
    if (_followers >= 3000) return 'Queen';
    if (_followers >= 1000) return 'Star';
    return '';
  }
}
// User Provider
