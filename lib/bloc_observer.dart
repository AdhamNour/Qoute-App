import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('onCreate == ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('onEvent == ${bloc.runtimeType},$event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    super.onChange(bloc, change);
    debugPrint('onChange == ${bloc.runtimeType},$change');
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    super.onClose(bloc);
    debugPrint('onClose == ${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
    debugPrint('onError == ${bloc.runtimeType},$error, $stackTrace');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
    debugPrint('onTransition == ${bloc.runtimeType},$transition');
  }
}
