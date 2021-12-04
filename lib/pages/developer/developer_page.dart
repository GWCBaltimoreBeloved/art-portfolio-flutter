import 'package:art_portfolio_flutter/flavors.dart';
import 'package:art_portfolio_flutter/pages/artist_list/artist_list_page.dart';
import 'package:art_portfolio_flutter/pages/artist_registration/artist_registration_page.dart';
import 'package:art_portfolio_flutter/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeveloperPage extends ConsumerWidget {
  const DeveloperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter app. Flavor is: ${F.appFlavor}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('Login Page'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginPage(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Artist Registration Page'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArtistRegistrationPage(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Artist List Page'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArtistListPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
