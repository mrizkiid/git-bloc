import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class BlocConsumerKuldi extends StatelessWidget {
  // const BlocListener({Key? key}) : super(key: key);
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Consumer"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocConsumer<Counter, int>(
            bloc: mycounter,
            builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(fontSize: 50),
              );
            },
            listener: (context, state) {
              if (state % 2 == 1) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Ganjil'), duration: Duration(seconds: 1)));
              }
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  mycounter.kurang();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  mycounter.tambah();
                },
                icon: const Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}
