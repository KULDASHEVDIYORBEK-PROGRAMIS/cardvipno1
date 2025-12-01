import 'dart:convert';
import 'package:cardvipno1/cubit/home_state.dart';
import 'package:cardvipno1/model/card_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeloadingState()) {
    getBrands();
  }

  List<Car> cars = [];

  Future<void> getBrands() async {
    try {
      /// JSONni assets dan o‘qish
      final jsonString = await rootBundle.loadString("assets/mock/mock_data.json");

      /// Decode qilish
      final data = json.decode(jsonString);

      /// Modelga parse qilish
      final cardModel = CardModel.fromJson(data);

      /// Cars listni olish
      cars = cardModel.cars;

      /// UI ga success holatini yuborish
      emit(HomeSuccessSate());
    } catch (e) {
      /// Xatolik
      emit(HomeErroState());
    }
  }
}
