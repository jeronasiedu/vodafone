import 'package:flutter/material.dart';
import 'package:vodafone/root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vodafone Clone',
      theme: ThemeData(
          // primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
      )
          // useMaterial3: true,
          ),
      home: const RootApp(),
    );
  }
}
