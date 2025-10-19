import 'package:ets_companion/components/scaffold_navigation.dart';
import 'package:ets_companion/views/home_screen.dart';
import 'package:ets_companion/views/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldNavigation(
          navigationShell: navigationShell,
          navigationRailDestinations: _shellRoutes.keys.toList(),
        );
      },
      branches: _shellRoutes.values.toList(growable: false),
    ),
  ],
);

final _shellRoutes = <NavigationRailDestination, StatefulShellBranch>{
  NavigationRailDestination(
    icon: Icon(Icons.home),
    label: Text('Home'),
  ): StatefulShellBranch(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    ],
  ),
  NavigationRailDestination(
    icon: Icon(Icons.checklist),
    label: Text('To do'),
  ): StatefulShellBranch(
    routes: [
      GoRoute(path: '/todo', builder: (context, state) => const TodoScreen()),
    ],
  ),
};
