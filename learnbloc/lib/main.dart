import 'package:flutter/material.dart';
import 'package:learnbloc/erico/bloc_erico.dart';
import 'package:learnbloc/kuldi_basic_cubit/basic_cubit.dart';
import 'package:learnbloc/kuldi_bloc_builder/kuldi_bloc.dart';
import 'package:learnbloc/kuldi_stream/kuldi_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: EricoBloc()
        // home: KuldiStream()
        // home: BasicCubit()
        home: KuldiBlocBuilder());
  }
}
