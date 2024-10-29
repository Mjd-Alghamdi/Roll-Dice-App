part of 'roll_dice_bloc.dart';

@immutable
sealed class RollDiceState {}

final class RollDiceInitial extends RollDiceState {}

// ignore: must_be_immutable
class ShowDiceNumberState extends RollDiceState {
  int rollNumber1;
  int rollNumber2;
  ShowDiceNumberState({required this.rollNumber1, required this.rollNumber2});
}
