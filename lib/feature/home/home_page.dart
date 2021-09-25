import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter app text'),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: provider.increment,
      ),
    );
  }
}
