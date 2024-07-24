import 'package:flutter/material.dart';

import 'view/io.dart';

void main() {
  runApp(const MyApp());
}

//Go crypto flutter app by itsAlexender
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GO Crypto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IO(),
    );
  }
}
