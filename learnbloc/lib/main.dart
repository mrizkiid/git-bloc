import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/bloc_consumer/kuldi_consumer.dart';
import 'package:learnbloc/bloc_dependencies_injection/provider_dua.dart';
import 'package:learnbloc/bloc_listener/kuldi_bloc_listener.dart';
import 'package:learnbloc/bloc_provider/kuldi_bloc_proveider.dart';
import 'package:learnbloc/erico/bloc_erico.dart';
import 'package:learnbloc/kuldi_basic_cubit/basic_cubit.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';
import 'package:learnbloc/kuldi_bloc_builder/kuldi_bloc.dart';
import 'package:learnbloc/kuldi_stream/kuldi_stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: EricoBloc()
        // home: KuldiStream()
        // home: BasicCubit()
        // home: KuldiBlocBuilder()
        // home: BlocListenerKuldi()
        // home: BlocConsumerKuldi(),
        // home: KuldiBlocProvider(),
        home: ProviderDua(),
      ),
    );
  }
}
