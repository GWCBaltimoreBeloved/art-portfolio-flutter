import 'package:art_portfolio_flutter/flavors.dart';
import 'package:art_portfolio_flutter/pages/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app. Flavor is: ${F.appFlavor}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Hi girls who code!',
            ),
            const SizedBox(height: 12),
            Text(
              'You have pressed the button ${provider.count} times',
            ),
            ElevatedButton(
              onPressed: provider.addUser,
              child: const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: provider.addUser,
              child: const Text('Add User'),
            ),
            ElevatedButton(
              onPressed: provider.getUsers,
              child: const Text('Get Users'),
            ),
            const SizedBox(height: 24),
            const _UsersList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: provider.increment,
      ),
    );
  }
}

class _UsersList extends StatelessWidget {
  const _UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: provider.users?.length ?? 0,
      itemBuilder: (context, index) => Center(
        child: Text(provider.users?[index].firstName ?? ''),
      ),
    );
  }
}
