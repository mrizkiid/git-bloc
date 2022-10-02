import 'package:flutter/material.dart';
import 'package:learnbloc/erico/color_bloc.dart';

class EricoBloc extends StatefulWidget {
  const EricoBloc({Key? key}) : super(key: key);

  @override
  State<EricoBloc> createState() => _MyAppState();
}

class _MyAppState extends State<EricoBloc> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
      appBar: AppBar(
        title: const Text("Bloc tanpa Libary"),
      ),
      body: Center(
          child: StreamBuilder(
        stream: bloc.stateStream,
        initialData: Colors.amber,
        builder: (context, AsyncSnapshot<Color> snapshot) {
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: 100,
            height: 100,
            color: snapshot.data,
          );
        },
      )),
    );
  }
}
