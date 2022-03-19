import 'package:art_portfolio_flutter/pages/art_feed/art_feed_page.dart';
import 'package:art_portfolio_flutter/pages/saved_art/saved_art_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Tabs {
  final String name;
  final int index;

  const Tabs._({
    required this.name,
    required this.index,
  });

  static Tabs fromName(String value) =>
      values.firstWhere((e) => e.name == value);
  static Tabs fromIndex(int value) =>
      values.firstWhere((e) => e.index == value);

  static const values = [
    artFeed,
    saved,
    myProfile,
  ];

  static const artFeed = Tabs._(
    name: 'artfeed',
    index: 0,
  );
  static const saved = Tabs._(
    name: 'saved',
    index: 1,
  );
  static const myProfile = Tabs._(
    name: 'myprofile',
    index: 2,
  );
}

class GWCTabBarView extends StatefulWidget {
  GWCTabBarView({required String tabName, Key? key})
      : index = Tabs.fromName(tabName).index,
        super(key: key);

  final int index;

  @override
  _GWCTabBarViewState createState() => _GWCTabBarViewState();
}

class _GWCTabBarViewState extends State<GWCTabBarView>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: Tabs.values.length,
      vsync: this,
      initialIndex: widget.index,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(GWCTabBarView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  void _onTap(BuildContext context, int index) {
    final newTab = Tabs.fromIndex(index);
    GoRouter.of(context).go('/home/${newTab.name}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: [
          ArtFeedPage(),
          SavedArtPage(),
          ArtFeedPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _controller,
        onTap: (index) => _onTap(context, index),
        labelColor: Colors.amber[800],
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(),
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.favorite),
            text: 'Saved',
          ),
          Tab(
            icon: Icon(Icons.person),
            text: 'My Profile',
          ),
        ],
      ),
    );
  }
}
