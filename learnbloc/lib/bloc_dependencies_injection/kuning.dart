import 'package:flutter/material.dart';
import 'package:learnbloc/bloc_dependencies_injection/biru.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class Kuning extends StatelessWidget {
  const Kuning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.amber,
      child: Biru(),
    );
  }
}
