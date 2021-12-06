import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtListPage extends ConsumerWidget {
  const ArtListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art List Page'),
      ),
      body: Center(
        child: Text('Art list page'),
      ),
    );
  }
}
