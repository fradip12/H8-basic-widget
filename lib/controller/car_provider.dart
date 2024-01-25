import 'package:basic_2/controller/mock_data.dart';
import 'package:basic_2/models/car_models.dart';
import 'package:flutter/material.dart';

class CarProvider extends ChangeNotifier {
  final List<Car> _cars = DUMMY_CAR_DATAS;

  List<Car> get cars => _cars;

  // Stream and Sink Process di sini !!!
  Car? selectedCar;

  void selectCar(Car data) {
    selectedCar = data;
    notifyListeners();
  }
  // set selectingCar(Car data) => selectedCar = data;
  // Car get selectedCar => _selectedCar ?? _cars[0];
}
