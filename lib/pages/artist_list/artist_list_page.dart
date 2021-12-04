import 'package:art_portfolio_flutter/pages/artist_list/artist_list_provider.dart';
import 'package:art_portfolio_flutter/repository/user/models/user.dart';
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
      itemCount: provider.users?.length ?? 0,
      itemBuilder: (context, index) {
        final user = provider.users?[index];
        if (user == null) {
          return SizedBox.shrink();
        }

        return _ArtistListItem(user);
      },
    );
  }
}

class _ArtistListItem extends StatelessWidget {
  final User user;
  const _ArtistListItem(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(user.firstName));
  }
}
