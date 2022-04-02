import 'package:art_portfolio_flutter/pages/saved_art/saved_art_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SavedArtPage extends ConsumerWidget {
  const SavedArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: _PageTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
              ),
              child: _ArtCount(), //acts as a parameter
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: _ArtGrid(),
            )),
          ],
        ),
      ),
    );
  }
}

class _ArtGrid extends ConsumerWidget {
  const _ArtGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //connects this widget to the saved art provider so it can listen to it
    final provider = ref.watch(savedArtProvider);
    return GridView.count(
      mainAxisSpacing: 50,
      crossAxisSpacing: 50,
      crossAxisCount: 3,
      children: provider.savedArtList.map((item) {
        /*center can't take multiple children so we give it one child (which is a collumn) which can then produce multiple children*/
        return Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(item.downloadUrl),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        print('icon button pressed');
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                item.name, //name of the picture
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _ArtCount extends ConsumerWidget {
  const _ArtCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(savedArtProvider);
    return Row(
      children: [
        Text(
          'You have saved ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          '${provider.savedArtList.length} ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Text(
          'works',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Saved',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
