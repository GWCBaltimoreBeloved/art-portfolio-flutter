import 'package:art_portfolio_flutter/my_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _MyApp(),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainBackgroundColor = Color(0xFFE1F5FF);

    return MaterialApp.router(
      routeInformationParser: MyRouter.goRouter.routeInformationParser,
      routerDelegate: MyRouter.goRouter.routerDelegate,
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: mainBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: mainBackgroundColor,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
