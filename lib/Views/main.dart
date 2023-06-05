import 'package:flutter/material.dart';
import 'package:flutter_template/Models/cars.dart';
import "../Controllers/car_controlller.dart";
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final CarsController carsController = CarsController();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
        body: FutureBuilder<List<Cars>>(
          future: carsController.getCarList(),
          builder: ,

        ),
        )
    );
}
