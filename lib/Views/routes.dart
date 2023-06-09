import 'package:flutter/material.dart';
import 'package:flutter_template/Views/car_insert.dart';

// this is for when we want to create a new route, and we want it to go to that destination
// through the navigator
Map<String, WidgetBuilder> routes = {
  CarInsert.routeName: (context) => const CarInsert(),

  //departments.routeName: (context) => departments()
};

// this is for when we want our route with a specific name do with the route, when we want to reach somewhere.
// it's most common use is sending arguments back.
// go to this link for more info https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments
MaterialPageRoute? settings(settings) {
  // // If you push the PassArguments route
  // if (settings.name == PassArgumentsScreen.routeName) {
  //   // Cast the arguments to the correct
  //   // type: ScreenArguments.
  //   final args = settings.arguments as ScreenArguments;
  //
  //   // Then, extract the required data from
  //   // the arguments and pass the data to the
  //   // correct screen.
  //   return MaterialPageRoute(
  //     builder: (context) {
  //       return PassArgumentsScreen(
  //         title: args.title,
  //         message: args.message,
  //       );
  //     },
  //   );
  // }
  // // The code only supports
  // // PassArgumentsScreen.routeName right now.
  // // Other values need to be implemented if we
  // // add them. The assertion here will help remind
  // // us of that higher up in the call stack, since
  // // this assertion would otherwise fire somewhere
  // // in the framework.
  // assert(false, 'Need to implement ${settings.name}');
  return null;
}
