import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("V O D A F O N E"),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: Text("V O D A F O N E"),
      ),
    );
  }
}
