import 'package:art_portfolio_flutter/pages/artist_list/artist_list_provider.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ArtistListPage extends ConsumerWidget {
  const ArtistListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artist List Page'),
      ),
      body: Center(
        child: _ArtistList(),
      ),
    );
  }
}

class _ArtistList extends ConsumerWidget {
  const _ArtistList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(artistListProvider);

    return ListView.builder(
      shrinkWrap: true,
      itemCount: provider.artists?.length ?? 0,
      itemBuilder: (context, index) {
        final artist = provider.artists?[index];
        if (artist == null) {
          return SizedBox.shrink();
        }

        return _ArtistListItem(artist);
      },
    );
  }
}

class _ArtistListItem extends ConsumerWidget {
  final Artist artist;
  const _ArtistListItem(this.artist, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Row(
      children: [
        Text(artist.firstName),
        SizedBox(width: 12),
        Text(artist.lastName),
        SizedBox(width: 12),
        Text(artist.description),
        SizedBox(width: 12),
        Text(artist.instagram),
        SizedBox(width: 12),
        Text(artist.github),
        Spacer(),
        IconButton(
            onPressed: () => ref
                .read(artistListProvider)
                .deleteArtist(id: artist.documentId),
            icon: Icon(Icons.clear))
      ],
    ));
  }
}
