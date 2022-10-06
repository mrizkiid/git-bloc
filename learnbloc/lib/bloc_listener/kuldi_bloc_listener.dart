import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class BlocListenerKuldi extends StatelessWidget {
  // const BlocListener({Key? key}) : super(key: key);
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Listener"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocListener<Counter, int>(
          bloc: mycounter,
          listener: (context, state) {
            if (state % 2 == 1) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Ganjil'), duration: Duration(seconds: 1)));
            }
          },
          child: BlocBuilder(
              bloc: mycounter,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 50),
                );
              }),
          listenWhen: (previous, current) {
            if (current == 15) {
              return false;
            } else {
              return true;
            }
          },
        ),
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
