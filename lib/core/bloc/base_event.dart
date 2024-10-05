import 'package:flutter/material.dart';

@immutable
abstract class BaseEvent {}

class InitEvent extends BaseEvent {}

class FetchData extends BaseEvent {}

class ErrorEvent extends BaseEvent {
  final String? message;

  ErrorEvent({this.message});
}
