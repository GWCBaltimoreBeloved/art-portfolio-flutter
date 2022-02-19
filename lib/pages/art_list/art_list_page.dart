import 'package:art_portfolio_flutter/my_router.dart';
import 'package:art_portfolio_flutter/pages/art_list/art_list_provider.dart';
import 'package:art_portfolio_flutter/repository/art/models/art.dart';
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
      body: _PageBody(),
    );
  }
}

class _PageBody extends ConsumerWidget {
  const _PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artListProvider);

    return ListView.builder(
      itemCount: provider.artList.length,
      itemBuilder: (context, index) {
        final artItem = provider.artList[index];
        return _ListItem(artItem);
      },
    );
  }
}

class _ListItem extends ConsumerWidget {
  final Art artItem;
  const _ListItem(this.artItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          artItem.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          artItem.description,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Text(artItem.artist.firstName),
      ],
    );
  }
}
