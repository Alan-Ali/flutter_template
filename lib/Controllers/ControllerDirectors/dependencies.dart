// ignore_for_file: import_of_legacy_library_into_null_safe

import "package:get_it/get_it.dart";

// here we put the
import 'package:flutter_template/Controllers/ControllerDirectors/rest_service.dart';
import '../car_controller.dart';

GetIt service = GetIt.instance;

void init() {
  // this one the main service for connecting to the database, which yeilds post, patch, delete and get
  service.registerLazySingleton(() => RestService());

  // all the singletrons we register after this are the ones we use through the RestService() class
  service.registerLazySingleton(() => CarsController());
}




