import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change=$change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('onClose=$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('onCreate=$bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
  }
}
