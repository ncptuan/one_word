import 'package:flutter/material.dart';

@immutable
abstract class BaseState {}

class InitialState extends BaseState {}

class ErrorState extends BaseState {
  final String message;

  ErrorState(this.message);
}

class NoDataState extends BaseState {
  final String message;

  NoDataState(this.message);
}

class LoadedState<TParams, TModel> extends BaseState {
  final TModel model;
  final TParams params;
  final bool isShowLoading;
  final String? errorMessage;

  LoadedState(
    this.params,
    this.model, {
    this.errorMessage,
    this.isShowLoading = false,
  });

  LoadedState copyWith({
    TModel? model,
    TParams? params,
    bool isShowLoading = false,
    String? errorMessage,
  }) {
    return LoadedState(
      params ?? this.params,
      model ?? this.model,
      errorMessage: errorMessage,
      isShowLoading: isShowLoading,
    );
  }
}
