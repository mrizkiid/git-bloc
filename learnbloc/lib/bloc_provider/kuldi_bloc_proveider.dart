// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/bloc_provider/data-widget.dart';
import 'package:learnbloc/bloc_provider/widget_bloc_listener.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class KuldiBlocProvider extends StatelessWidget {
  // const KuldiBlocProvider({Key? key}) : super(key: key);
  // Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    Counter mycounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Bloc Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button -
              Material(
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    mycounter.kurang();
                  },
                  child: Container(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              //Bloc Listener
              WidgetBlocListener(),
              //Data Real
              // WidgetData(),
              //button +
              Material(
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    mycounter.tambah();
                  },
                  child: Container(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
