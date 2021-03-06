import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/controller/auth_controller.dart';
import 'package:spotify_clone/model/model.dart';
import 'package:spotify_clone/view/theme/themes.dart';
import 'package:spotify_clone/view/widget/bottom_nav_home.dart';
import 'package:spotify_clone/view/widget/card_frequent_views.dart';
import 'package:spotify_clone/view/widget/card_recommended_views.dart';

part 'auth/login_page.dart';
part 'auth/welcome_page.dart';
part 'home/home_page.dart';
part 'splash_screen.dart';

Route createRouteToLogin() {
  return PageRouteBuilder(
    pageBuilder: (context, a, b) => LoginPageViews(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.ease;

      final tween = Tween(
        begin: Offset(5.0, 0.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));
      final _offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: _offsetAnimation,
        child: child,
      );
    },
  );
}

Route createRouteBackToWelcome() {
  return PageRouteBuilder(
    pageBuilder: (context, a, b) => WelcomePageViews(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.ease;

      final tween = Tween(
        begin: Offset(5.0, 0.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));
      final _offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: _offsetAnimation,
        child: child,
      );
    },
  );
}

Route createRouteToHomeNoAnim() {
  return PageRouteBuilder(pageBuilder: (context, a, b) => HomePageViews());
}
