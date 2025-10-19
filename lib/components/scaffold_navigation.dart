import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final List<NavigationRailDestination> navigationRailDestinations;

  const ScaffoldNavigation({
    super.key,
    required this.navigationShell,
    required this.navigationRailDestinations,
  });

  @override
  Widget build(BuildContext context) {
    final navigationRail = _navigationRail();
    return Scaffold(
      body: Row(
        children: [
          navigationRail,
          const VerticalDivider(thickness: 1.0, width: 1.0),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }

  Widget _navigationRail() {
    return NavigationRail(
      selectedIndex: navigationShell.currentIndex,
      labelType: NavigationRailLabelType.all,
      onDestinationSelected: (index) => navigationShell.goBranch(index),
      destinations: navigationRailDestinations,
    );
  }
}
