import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedArtPage extends ConsumerWidget {
  const SavedArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '~Saved Art~',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
          widthFactor: 27,
          child: Text(
            'You have INSERT NUMBER works saved',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          )),
    );
  }
}
