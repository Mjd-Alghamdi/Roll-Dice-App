import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'roll_dice_event.dart';
part 'roll_dice_state.dart';

class RollDiceBloc extends Bloc<RollDiceEvent, RollDiceState> {
  RollDiceBloc() : super(RollDiceInitial()) {
    on<RollDiceEvent>((event, emit) {});

    // -- Update the roll dice number
    on<UpdateDiceNumberEvent>(
      (event, emit) {
        int num1 = Random().nextInt(5) + 1;
        int num2 = Random().nextInt(5) + 1;

        emit(ShowDiceNumberState(rollNumber1: num1, rollNumber2: num2));
      },
    );
  }
}
