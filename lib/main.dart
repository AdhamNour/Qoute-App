import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoutes_app/bloc_observer.dart';

import 'app.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const QouteApp()),
      blocObserver: AppBlocObserver());
}
