// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: ".env.dev", name: "Env")
abstract class Env {
  @EnviedField(varName: "LOCAL_URL")
  static const String localUrl = _Env.localUrl;

  @EnviedField(varName: "PUBLIC_URL")
  static const String publicUrl = _Env.publicUrl;
}
