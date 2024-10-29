import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roll_dice_app/bloc/roll_dice_bloc.dart';
import 'package:roll_dice_app/dice_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RollDiceBloc>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.ac_unit_rounded),
        centerTitle: false,
        title: const Text(
          "Roll Dice App",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<RollDiceBloc, RollDiceState>(
              builder: (context, state) {
                if (state is ShowDiceNumberState) {
                  return DiceWidget(
                    num1: state.rollNumber1,
                    num2: state.rollNumber2,
                  );
                } else {
                  return const DiceWidget(
                    num1: 1,
                    num2: 2,
                  );
                }
              },
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                bloc.add(UpdateDiceNumberEvent());
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 52, 52),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 137, 137, 137),
                      spreadRadius: 1,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: const Text(
                  "Roll It !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
