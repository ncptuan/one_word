import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:one_word/main.dart';
import 'package:http/http.dart' as http;

import 'dependencies.dart';
import 'route/route.dart';
import 'style/style.dart';

class OneWordApp extends StatefulWidget {
  const OneWordApp({super.key});

  @override
  OneWordAppState createState() => OneWordAppState();
}

class OneWordAppState extends State<OneWordApp> {
  String? _token;
  late Stream<String> _tokenStream;
  String? initialMessage;
  bool _resolved = false;

  void setToken(String? token) {
    print('FCM Token: $token');
    setState(() {
      _token = token;
    });
  }

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getToken(vapidKey: '').then(setToken);
    _tokenStream = FirebaseMessaging.instance.onTokenRefresh;
    _tokenStream.listen(setToken);

    FirebaseMessaging.instance.getInitialMessage().then(
          (value) => setState(
            () {
              _resolved = true;
              initialMessage = value?.data.toString();
            },
          ),
        );

    FirebaseMessaging.onMessage.listen(showFlutterNotification);
  }

  final _appRouter = AppDependencies.injector.get<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: MyTheme.lightTheme(),
      builder: EasyLoading.init(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
