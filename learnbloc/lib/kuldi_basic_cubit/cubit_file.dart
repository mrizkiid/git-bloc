import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.inisial = 0}) : super(inisial);

  int inisial;
  int? current;
  int? next;
  void tambah() {
    emit(state + 1);
  }

  void kurang() {
    emit(state - 1);
  }

  //obsever
  ///perubahan
  ///error
  ///

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    current = change.currentState;
    next = change.nextState;
  }
}
