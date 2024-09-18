import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:one_word/route/router.dart';

import '../models/data/data.dart';

class RouteKeys {
  // Welcome
  static const welcome = '/';
  // Home
  static const home = 'home';

  // Chat
  static const chat = 'chat';

  /// Sign up pages
  static const signUpPage = '/sign-up'; // not create
  static const unAuthorization = '/un-authorization';
  static const notFound = '/not-found-page';
  static const login = '/login'; // not create
}

class RouteContants {
  // RouteContants._();
  static List<NavigationModel> get navigationTabs {
    return [
      NavigationModel(
        title: tr('home'),
        destination: const DashBoardRoute(),
        children: [],
        icon: const Icon(Icons.home),
      ),
      NavigationModel(
        title: tr('chat'),
        destination: const ChatRoute(),
        children: [],
        icon: const Icon(Icons.chat),
      ),
    ];
  }
}
