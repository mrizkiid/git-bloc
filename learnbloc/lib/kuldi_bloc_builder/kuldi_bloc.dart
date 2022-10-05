import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class KuldiBlocBuilder extends StatelessWidget {
  // const KuldiBlocBuilder({Key? key}) : super(key: key);
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Builder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
            bloc: mycounter,
            buildWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                false;
              }
            },
            builder: (context, state) {
              return Text(
                "$state",
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          // StreamBuilder(
          //   initialData: mycounter.init,
          //   stream: mycounter.stream,
          //   builder: (context, snapshot) {
          //     return Text(
          //       "${snapshot.data}",
          //       style: const TextStyle(fontSize: 50),
          //     );
          //   },
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    mycounter.kurang();
                  },
                  icon: Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    mycounter.tambah();
                  },
                  icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
