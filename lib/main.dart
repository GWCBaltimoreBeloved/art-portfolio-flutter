import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'feature/home/home_page.dart';
import 'feature/home/home_provider.dart';

void main() {
  runApp(
    const _ProviderWrapper(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class _ProviderWrapper extends StatelessWidget {
  final Widget child;
  const _ProviderWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: child,
    );
  }
}
