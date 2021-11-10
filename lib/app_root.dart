import 'package:art_portfolio_flutter/feature/home/home_page.dart';
import 'package:art_portfolio_flutter/feature/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _ProviderWrapper(
      child: _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key? key}) : super(key: key);

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
