import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_flutter/cubit/state.dart';
//State management

class MyCubit extends Cubit<BMIStates> {
  MyCubit() : super(BMIInitialState());

  bool isGenderMale = true;

  void isMale() {
    isGenderMale = !isGenderMale;
    emit(ChangeGenderState());
  }

  double height = 120;

  void changeHeight(double value) {
    height = value;
    emit(ChangeHeightState());
  }
}
