import 'package:art_portfolio_flutter/my_router.dart';
import 'package:art_portfolio_flutter/pages/art_feed/art_feed_provider.dart';
import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ArtFeedPage extends ConsumerWidget {
  const ArtFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () => GoRouter.of(context).go(MyRouter.routes.developer),
            child: Text('Art Feed Page')),
      ),
      body: _PageBody(),
    );
  }
}

class _PageBody extends ConsumerWidget {
  const _PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artFeedProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${provider.artList.length} results found',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: provider.artList.length,
              itemBuilder: (context, index) {
                final artItem = provider.artList[index];
                return _ListItem(artItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ListItem extends ConsumerWidget {
  final Art artItem;
  const _ListItem(this.artItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artFeedProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(children: [
          Image.network(artItem.downloadUrl),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: provider.isFavoriteArt(artItem.documentId)
                    ? Colors.pink
                    : Colors.white,
                size: 30.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              onPressed: () {
                provider.toggleFavoriteStatus(artItem.documentId);
              }),
        ]),
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
