import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<DateTime> {
  Timer? timer;
  TimerCubit() : super(DateTime.now());
  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (time) {
      if (time.isActive) {
        emit(DateTime.now());
      } else {
        time.cancel();
      }
    });
  }
}
