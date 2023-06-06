import 'package:flutter/material.dart';
import 'package:flutter_template/Models/cars.dart';
import "../Controllers/car_controller.dart";
import 'package:flutter_template/Controllers/dependencies.dart' as dep;
void main() {
  dep.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final CarsController carsController = CarsController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: FutureBuilder<List<Cars>>(
            future: carsController.getCarList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final data = snapshot.data!;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final carBrand = data[index].carBrand;
                    final carId = data[index].carId;
                    return ListTile(
                      title: Text("${carBrand}hello"),
                      subtitle: Text("${carId}hello"),
                    );
                  },
                );
              }
            },
          ),
        )
    );
  }
}