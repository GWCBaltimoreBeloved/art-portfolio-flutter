import 'package:art_portfolio_flutter/feature/home/home_provider.dart';
import 'package:art_portfolio_flutter/flavors.dart';
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
