import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/reels_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/pic_of_day_screen.dart';
import 'screens/news_screen.dart';
import 'screens/yojna_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const SocialOceanApp());
}

class SocialOceanApp extends StatelessWidget {
  const SocialOceanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add your providers here, e.g.
        // ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Ocean',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/chat': (context) => const ChatScreen(),
          '/reels': (context) => const ReelsScreen(),
          '/profile': (context) => const ProfileScreen(),
          '/picofday': (context) => const PicOfDayScreen(),
          '/news': (context) => const NewsScreen(),
          '/yojna': (context) => const YojnaScreen(),
          '/settings': (context) => const SettingsScreen(),
        },
      ),
    );
  }
}
