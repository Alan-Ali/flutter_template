// ignore_for_file: import_of_legacy_library_into_null_safe



import "package:get_it/get_it.dart";

// here we put the
import 'package:flutter_template/Controllers/rest_service.dart';
import "./car_controller.dart";

GetIt service = GetIt.instance;


void init(){
  service.registerLazySingleton(() => RestService());
  service.registerLazySingleton(() => CarsController());


}




