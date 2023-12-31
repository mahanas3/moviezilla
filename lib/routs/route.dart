import 'package:flutter/material.dart';
import 'package:movieapp/routs/routname.dart';
import 'package:movieapp/screens/details.dart';
import 'package:movieapp/screens/login.dart';
import 'package:movieapp/screens/signup.dart';
import 'package:movieapp/watchlist/video.dart';
import 'package:movieapp/watchlist/watchlistes.dart';
import '../home/bottomnavigation.dart';

class AppRoute {
  static Route<dynamic> routesetting(RouteSettings setting) {
    switch (setting.name) {
      case RoutName.loginscreen:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );

      case RoutName.homescreen:
        return MaterialPageRoute(
          builder: (context) => const BottomNavigation(),
        );

      case RoutName.playinging:
        return MaterialPageRoute(
          builder: (context) => Blank(id: setting.arguments as String),
        );

      case RoutName.signintextpage:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );

      case RoutName.signuptextpage:
        return MaterialPageRoute(
          builder: (context) => const Signup(),
        );

      case RoutName.watchlist:
        return MaterialPageRoute(
          builder: (context) => const Watchlist(),
        );

      // case RoutName.videoply:
      //   return MaterialPageRoute(
      //     builder: (context) => const Video(videoUrl: '',),
      //   );

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const BottomNavigation(),
          );
        }
    }
  }
}
