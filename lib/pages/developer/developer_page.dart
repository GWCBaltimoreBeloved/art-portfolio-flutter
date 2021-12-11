import 'package:art_portfolio_flutter/flavors.dart';
import 'package:art_portfolio_flutter/my_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DeveloperPage extends ConsumerWidget {
  const DeveloperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app. Flavor is: ${F.appFlavor}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('Login Page'),
              onPressed: () => GoRouter.of(context).push(
                MyRouter.routes.login,
              ),
            ),
            ElevatedButton(
              child: Text('Artist Registration Page'),
              onPressed: () => GoRouter.of(context).push(
                MyRouter.routes.artistRegistration,
              ),
            ),
            ElevatedButton(
              child: Text('Artist List Page'),
              onPressed: () => GoRouter.of(context).push(
                MyRouter.routes.artistList,
              ),
            ),
            ElevatedButton(
              child: Text('Art List Page'),
              onPressed: () => GoRouter.of(context).push(
                MyRouter.routes.artList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
