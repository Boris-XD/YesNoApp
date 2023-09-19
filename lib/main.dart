import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/chat/chat_screen.dart';
import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(themeIndex: 2, isDark: true).theme(),
      home: const ChatScreen(),
    );
  }
}