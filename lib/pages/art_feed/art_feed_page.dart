import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtFeedPage extends ConsumerWidget {
  const ArtFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Feed Page'),
      ),
      body: Center(
        child: Text('Art Feed'),
      ),
    );
  }
}
