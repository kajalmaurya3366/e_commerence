import 'package:e_commerence/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  final widgetsBinding=WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}
