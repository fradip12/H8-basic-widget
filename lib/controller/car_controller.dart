import 'package:basic_2/models/car_models.dart';
import 'package:flutter/material.dart';

class CarProvider extends ChangeNotifier {
  // Stream and Sink Process di sini !!!
  CarModels? selectedCar;

  void selectCar(CarModels data) {
    selectedCar = data;
    notifyListeners();
  }
}
