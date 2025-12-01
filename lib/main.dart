import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cardvipno1/cubit/home_cubit.dart';
import 'package:cardvipno1/screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // HomeCubitni butun appga ulaymiz
        BlocProvider(
          create: (_) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car App',
        home: const HomeScreens(),   // SENING HomeScreens
      ),
    );
  }
}
