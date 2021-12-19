import 'package:art_portfolio_flutter/common/show_loading_dialog.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _PageHeader(),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text('Login Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.login,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Artist Registration Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.artistRegistration,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Artist List Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.artistList,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Upload Art Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.uploadArt,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Artist List Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.artistList,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Art List Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.artList,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Create Account Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.createAccount,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Saved Art'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.savedArt,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Email Verification Page'),
                onPressed: () => GoRouter.of(context).push(
                  MyRouter.routes.emailVerification,
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Show loading dialog'),
                onPressed: () async {
                  final closeDialog = showLoadingDialog(
                    context: context,
                    text: 'text',
                  );
                  await Future.delayed(Duration(seconds: 3));
                  closeDialog();
                },
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Developer Components Page',
      style: TextStyle(fontSize: 36),
    );
  }
}
