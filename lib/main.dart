import 'package:flutter/material.dart';
import 'app_config.dart';
import 'my_home_page.dart';

void main() {
  var configuredApp = AppConfig(
    appName: 'Build flavors MAIN',
    flavorName: 'main application',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: MyApp(),
  );

  runApp(configuredApp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Call AppConfig.of(context) anywhere to obtain the
    // environment specific configuration
    var config = AppConfig.of(context)!;

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
