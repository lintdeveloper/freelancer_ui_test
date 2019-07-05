import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/screens/notFoundScreen.dart';

import 'screens/settings_screen.dart';

Widget makeRoute({@required BuildContext context, @required String routeName, Object arguments}) {
  final Widget child = _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute({
  @required BuildContext context,
  @required String routeName,
  Object arguments,
}) {
  switch (routeName) {
    case '/':
      return SettingsScreen();
      break;
    default:
      return NotFoundScreen(routName: '$routeName');
  }
}