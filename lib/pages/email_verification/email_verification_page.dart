import 'package:art_portfolio_flutter/my_router.dart';
import 'package:art_portfolio_flutter/pages/email_verification/email_verification_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EmailVerificationPage extends ConsumerWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<EmailVerificationProvider>(emailVerificationProvider,
        (previous, current) {
      if (current.isUserVerified) {
        GoRouter.of(context).go(
          MyRouter.routes.artList,
        );
      }
    });
    return Scaffold(
      appBar: AppBar(),
      body: _PageBody(),
    );
  }
}

class _PageBody extends ConsumerWidget {
  const _PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(emailVerificationProvider);

    return ListView(
      padding: EdgeInsets.only(
        left: 24,
        top: 8,
        right: 24,
        bottom: 24,
      ),
      children: [
        SizedBox(height: 24),
        Text(
          'An email has been sent to the address provided. Please click on the verification link.',
        ),
        TextButton(
          onPressed: provider.resendEmail,
          child: Text('Re-send verification email'),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
