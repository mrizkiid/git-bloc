import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.amber,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.lightBlue,
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Bloc tanpa Libary"),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 10),
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
