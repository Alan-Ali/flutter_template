// ignore_for_file: import_of_legacy_library_into_null_safe



import "package:get_it/get_it.dart";

// here we put the
import "./todo_service.dart";

GetIt service = GetIt.instance;


void init(){
  service.registerLazySingleton(() => TodoDataService());


}




