import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnbloc/bloc_dependencies_injection/kuning.dart';

class Merah extends StatelessWidget {
  const Merah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.red,
      child: Kuning(),
    );
  }
}
