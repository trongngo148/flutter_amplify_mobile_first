import 'package:flutter/material.dart';
import 'package:flutter_amplify_app/common/navigation/router/routes.dart';
import 'package:flutter_amplify_app/features/trip/ui/trips_gridview/trips_list_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const TripsListPage(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(state.error.toString()),
    ),
  ),
);
