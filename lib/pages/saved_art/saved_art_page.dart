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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Column(
          children: [
            Text(
              'You have INSERT NUMBER works saved',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 64,
                top: 64,
              ),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/1200px-Oranges_-_whole-halved-segment.jpg',
                width: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
