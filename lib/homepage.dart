import 'package:flutter/material.dart';

import 'content.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, bottom: 80, top: 120),
          child: Image.asset(
            'lib/images/apple.jpeg',
          ),
        ),
        const Padding(
          // ignore: unnecessary_const
          padding: const EdgeInsets.all(20.0),
          child: Text('Our Deliver iphone market in this App',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 89, 238),
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
        ),
        const Text('New Mobile Phone arrived',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w400)),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ProductScreen();
              },
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Click Here",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
