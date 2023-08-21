import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(
        
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          
          colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 169, 145, 210))
              .copyWith(background: const Color.fromARGB(255, 227, 199, 152))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ScreenPage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('lib/images/logo.png'),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSquareCircle(
              color: Color.fromARGB(255, 233, 4, 50),
              size: 50.0,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitSquareCircle(
              color: Color.fromARGB(255, 70, 3, 228),
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
