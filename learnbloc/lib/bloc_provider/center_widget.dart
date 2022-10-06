import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class WIdgetCenter extends StatelessWidget {
  const WIdgetCenter({
    Key? key,
    // required this.mycounter,
  }) : super(key: key);

  // final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Center(
      child: BlocBuilder(
        bloc: mycounter,
        builder: (context, x) => Text(
          '$x',
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
      ),
    );
  }
}
