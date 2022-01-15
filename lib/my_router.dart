import 'package:art_portfolio_flutter/pages/art_list/art_list_page.dart';
import 'package:art_portfolio_flutter/pages/artist_list/artist_list_page.dart';
import 'package:art_portfolio_flutter/pages/artist_registration/artist_registration_page.dart';
import 'package:art_portfolio_flutter/pages/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:art_portfolio_flutter/pages/bottom_nav_bar/shared.dart';
import 'package:art_portfolio_flutter/pages/create_account/create_account_page.dart';
import 'package:art_portfolio_flutter/pages/developer/developer_page.dart';
import 'package:art_portfolio_flutter/pages/email_verification/email_verification_page.dart';
import 'package:art_portfolio_flutter/pages/login/login_page.dart';
import 'package:art_portfolio_flutter/pages/saved_art/saved_art_page.dart';
import 'package:go_router/go_router.dart';

class _Routes {
  const _Routes();
  final artistRegistration = '/artistRegistration';
  final artistList = '/artistList';
  final artList = '/artList';
  final developer = '/developer';
  final login = '/login';
  final createAccount = '/createAccount';
  final savedArt = '/savedArt';
  final emailVerification = '/emailVerification';
}

class MyRouter {
  static const routes = _Routes();

  static final goRouter = GoRouter(
    // initialLocation: routes.developer,
    routes: [
      GoRoute(
        path: '/',
        redirect: (_) => '/family/${Families.data[0].id}',
      ),
      GoRoute(
        path: routes.artList,
        builder: (_, __) => const ArtListPage(),
      ),
      GoRoute(
        path: routes.savedArt,
        builder: (_, __) => const SavedArtPage(),
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
        path: '/family/:fid',
        builder: (context, state) => BottomNavBarView(
          key: state.pageKey,
          selectedFamily: Families.family(state.params['fid']!),
        ),
        routes: [
          GoRoute(
            path: 'person/:pid',
            builder: (context, state) {
              final family = Families.family(state.params['fid']!);
              final person = family.person(state.params['pid']!);

              return PersonScreen(family: family, person: person);
            },
          ),
        ],
      ),
    ],
  );
}
