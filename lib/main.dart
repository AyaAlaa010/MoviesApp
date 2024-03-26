import 'package:flutter/material.dart';
import 'package:movies_app/core/config/styles/application_theme_manager.dart';
import 'package:movies_app/ui/layout_view/views/layout_view.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LayoutView(),
      theme: ApplicationThemeManager.theme,
    );
  }
}

