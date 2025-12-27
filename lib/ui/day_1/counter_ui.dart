import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/day_1/counter_bloc.dart';
import 'package:learn_bloc/bloc/day_1/counter_event.dart';
import 'package:learn_bloc/bloc/day_1/counter_state.dart';
import 'package:learn_bloc/utils/btn_util.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter APP Using BLoc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 70,
                  ),
                );
              },
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BtnUtil(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementEvent());
                  },
                  label: Text('Increment'),
                  icon: Icon(CupertinoIcons.add),
                ),
                BtnUtil(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementEvent());
                  },
                  label: Text('Decrement'),
                  icon: Icon(CupertinoIcons.minus),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
