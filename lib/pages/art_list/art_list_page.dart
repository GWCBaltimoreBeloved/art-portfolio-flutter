import 'package:art_portfolio_flutter/my_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ArtListPage extends ConsumerWidget {
  const ArtListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: !kDebugMode
                ? null
                : () => GoRouter.of(context).go(MyRouter.routes.developer),
            child: Text('Art List Page')),
      ),
      body: Center(
        child: Text('Art list page'),
      ),
    );
  }
}
