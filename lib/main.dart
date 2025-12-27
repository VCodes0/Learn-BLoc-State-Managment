import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_bloc/bloc/day_1/counter_bloc.dart';

import 'ui/day_1/counter_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const LearnBLoc());
}

class LearnBLoc extends StatelessWidget {
  const LearnBLoc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CounterBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _theme(),
        home: CounterApp(),
      ),
    );
  }

  ThemeData? _theme() {
    return ThemeData(
      scaffoldBackgroundColor: CupertinoColors.white,
      appBarTheme: _appBarTheme(),
    );
  }

  AppBarTheme? _appBarTheme() {
    return AppBarTheme(
      backgroundColor: CupertinoColors.white,
      foregroundColor: CupertinoColors.black,
      surfaceTintColor: CupertinoColors.white,
      shadowColor: CupertinoColors.black,
      centerTitle: true,
      titleSpacing: 1,
    );
  }
}
