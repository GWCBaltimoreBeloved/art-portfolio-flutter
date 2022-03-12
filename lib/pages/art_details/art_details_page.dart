import 'package:art_portfolio_flutter/pages/art_details/art_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtDetailsPage extends ConsumerWidget {
  const ArtDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Details Page'),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
        children: [
          _PageHeader(),
          SizedBox(height: 24),
          _AuthorName(),
        ],
      ),
    );
  }
}

class _PageHeader extends ConsumerWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artDetailsProvider);
    return Text(
      provider.artworkName,
      style: TextStyle(fontSize: 36),
    );
  }
}

class _AuthorName extends ConsumerWidget {
  const _AuthorName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artDetailsProvider);
    return Text(
      provider.authorName,
      style: TextStyle(fontSize: 36),
    );
  }
}
