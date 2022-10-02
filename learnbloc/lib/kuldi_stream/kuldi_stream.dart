import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class KuldiStream extends StatefulWidget {
  const KuldiStream({Key? key}) : super(key: key);

  @override
  State<KuldiStream> createState() => _KuldiStreamState();
}

class _KuldiStreamState extends State<KuldiStream> {
  Stream<int> countStream() async* {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream App'),
      ),
      body: StreamBuilder(
        stream: countStream(),
        builder: (context, snapshot) {
          return (snapshot.connectionState == ConnectionState.waiting)
              ? const Center(
                  child: Text("Loading ...",
                      style: TextStyle(
                        fontSize: 50,
                      )))
              : Center(
                  child: Text("${snapshot.data}",
                      style: const TextStyle(
                        fontSize: 50,
                      )));
        }, //builder
      ),
    );
  } //widget build
}
