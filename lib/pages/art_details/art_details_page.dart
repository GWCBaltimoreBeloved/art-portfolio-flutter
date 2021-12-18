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
        ],
      ),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Title Test',
      style: TextStyle(fontSize: 36),
    );
  }
}
