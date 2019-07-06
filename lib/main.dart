import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/routes.dart';

import 'utils/custom_theme_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Demo',
      debugShowCheckedModeBanner: false,
      theme: customThemeData(),
      onGenerateRoute: (settings){
        return MaterialPageRoute(
            builder: (BuildContext context) => makeRoute(
              context: context,
              routeName: settings.name,
              arguments: settings.arguments,
            ),
            maintainState: true,
            fullscreenDialog: false
        );
      },
    );
  }
}
