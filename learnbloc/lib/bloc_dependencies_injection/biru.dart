import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class Biru extends StatelessWidget {
  // const Biru({
  //   Key? key,
  // }) : super(key: key);

  // Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.blue,
      child: Center(
        child: BlocBuilder(
          bloc: mycounter,
          builder: (context, x) => Text(
            '$x',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
