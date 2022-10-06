import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnbloc/bloc_provider/center_widget.dart';
import 'package:learnbloc/kuldi_bloc_builder/counter.dart';

class WidgetData extends StatelessWidget {
  const WidgetData({
    Key? key,
    // required this.mycounter,
  }) : super(key: key);

  // final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      child: WIdgetCenter(),
    );
  }
}
