import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gwc_art_portfolio_flutter/app_root.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}
