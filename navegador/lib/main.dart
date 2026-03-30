import 'package:flutter/material.dart';
import 'package:navegador/core/app_theme.dart';
import 'package:navegador/core/routing.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Login App',
      routerConfig: appRouter,
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
