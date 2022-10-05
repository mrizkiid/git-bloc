// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learnbloc/kuldi_basic_cubit/cubit_file.dart';

class BasicCubit extends StatefulWidget {
  const BasicCubit({Key? key}) : super(key: key);

  @override
  State<BasicCubit> createState() => _BasicCubitState();
}

class _BasicCubitState extends State<BasicCubit> {
  CounterCubit mycounter = CounterCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CUBIT APPS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder(
            initialData: mycounter.inisial,
            stream: mycounter.stream,
            builder: (context, snapshot) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      "${snapshot.data}",
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Current : ${mycounter.current}",
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Next : ${mycounter.next}",
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
              ); //return else
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    return mycounter.kurang();
                  },
                  icon: Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    return mycounter.tambah();
                  },
                  icon: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
