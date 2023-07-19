import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AutoRouteEventObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log(
      'New route pushed: ${route.settings.name}',
      name: 'Auto Route',
    );
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log(
      'Route popped: ${route.settings.name}',
      name: 'Auto Route',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log(
      'Route removed: ${route.settings.name}',
      name: 'Auto Route',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    log(
      '${oldRoute?.settings.name} Has Replaced By ${newRoute?.settings.name}',
      name: 'Auto Route',
    );
  }
}
