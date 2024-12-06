import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/toggleprovider.dart';
import 'package:toggle_provider/toggleproviderexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Toggleprovider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Toggleproviderexample(),
      ),
    );
  }
}