import 'package:flutter/material.dart';
import 'package:ui_provider/home.dart';
import 'package:ui_provider/about.dart';
import 'package:ui_provider/settings.dart';
import 'package:provider/provider.dart';
import 'package:ui_provider/model/ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UI()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => const Settings(),
        },
      ),
    );
  }
}
