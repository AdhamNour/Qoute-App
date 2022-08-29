import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qoutes_app/bloc_observer.dart';

import 'app.dart';
import 'package:qoutes_app/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  BlocOverrides.runZoned(() => runApp(const QouteApp()),
      blocObserver: AppBlocObserver());
}
