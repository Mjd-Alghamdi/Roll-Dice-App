part of 'roll_dice_bloc.dart';

@immutable
sealed class RollDiceEvent {}

class UpdateDiceNumberEvent extends RollDiceEvent{}