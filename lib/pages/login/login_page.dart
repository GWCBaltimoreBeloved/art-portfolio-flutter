import 'package:art_portfolio_flutter/pages/artist_list/artist_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    final provider = ref.watch(artistListProvider);

    return ListView(
      padding: EdgeInsets.only(
        left: 24,
        top: 8,
        right: 24,
        bottom: 24,
      ),
      children: [
        _PageHeader(),
      ],
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign In',
      style: TextStyle(fontSize: 36),
    );
  }
}
