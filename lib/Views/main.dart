import 'package:flutter/material.dart';
import 'package:flutter_template/Models/cars.dart';
import "package:flutter_template/Views/routes.dart";
import "../Controllers/car_controller.dart";
import 'package:flutter_template/Controllers/ControllerDirectors/dependencies.dart'
    as dep;

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
    ));
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      onGenerateRoute: settings,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
