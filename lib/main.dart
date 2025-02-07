// ignore: depend_on_referenced_packages

import 'package:aya_share/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'generator_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AyaSharee',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 39, 241, 12)),
        ),
        home: GeneratorPage(),
      ),
    );
  }
}