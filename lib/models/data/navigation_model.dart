import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationModel {
  final String code;
  final String title;
  final PageRouteInfo destination;
  List<NavigationModel>? children;
  final Icon? icon;

  PageRouteInfo get getDestination =>
      isParent ? children!.first.destination : destination;

  NavigationModel({
    this.code = '',
    required this.title,
    required this.destination,
    this.children,
    this.icon,
  });

  bool get isParent => children != null && children!.isNotEmpty;
}
