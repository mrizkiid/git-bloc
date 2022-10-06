import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/bloc_provider/data-widget.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class WidgetBlocListener extends StatelessWidget {
  const WidgetBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return BlocListener<Counter, int>(
      bloc: mycounter,
      listener: (context, state) {
        if (state % 2 == 1) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Data genap")));
        }
      },
      child: WidgetData(),
    );
  }
}
