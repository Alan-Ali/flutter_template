// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env.dev", name: "Env")
abstract class Env {
  @EnviedField(varName: "LOCAL_URL")
  static const String local_url = _Env.local_url as String;

  @EnviedField(varName: "PUBLIC_URL")
  static const String public_url = _Env.public_url as String;
}
