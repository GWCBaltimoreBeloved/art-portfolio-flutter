import 'package:art_portfolio_flutter/pages/art_feed/art_feed_page.dart';
import 'package:art_portfolio_flutter/pages/art_list/art_list_page.dart';
import 'package:art_portfolio_flutter/pages/artist_list/artist_list_page.dart';
import 'package:art_portfolio_flutter/pages/artist_registration/artist_registration_page.dart';
import 'package:art_portfolio_flutter/pages/create_account/create_account_page.dart';
import 'package:art_portfolio_flutter/pages/developer/developer_page.dart';
import 'package:art_portfolio_flutter/pages/email_verification/email_verification_page.dart';
import 'package:art_portfolio_flutter/pages/login/login_page.dart';
import 'package:go_router/go_router.dart';

class _Routes {
  const _Routes();
  final artistRegistration = '/artistRegistration';
  final artistList = '/artistList';
  final artList = '/artList';
  final developer = '/developer';
  final login = '/login';
  final createAccount = '/createAccount';
  final artFeed = '/artFeed';
  final emailVerification = '/emailVerification';
}

class MyRouter {
  static const routes = _Routes();

  static final goRouter = GoRouter(
    initialLocation: routes.developer,
    routes: [
      GoRoute(
        path: routes.artList,
        builder: (_, __) => const ArtListPage(),
      ),
      GoRoute(
        path: routes.artistRegistration,
        builder: (_, __) => const ArtistRegistrationPage(),
      ),
      GoRoute(
        path: routes.artistList,
        builder: (_, __) => const ArtistListPage(),
      ),
      GoRoute(
        path: routes.developer,
        builder: (_, __) => const DeveloperPage(),
      ),
      GoRoute(
        path: routes.login,
        builder: (_, __) => const LoginPage(),
      ),
      GoRoute(
        path: routes.createAccount,
        builder: (_, __) => const CreateAccountPage(),
      ),
      GoRoute(
        path: routes.emailVerification,
        builder: (_, __) => const EmailVerificationPage(),
      ),
      GoRoute(
        path: routes.artFeed,
        builder: (_, __) => const ArtFeedPage(),
      ),
    ],
  );
}
