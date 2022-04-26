import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:injectable/injectable.dart';

enum Env { acceptance, prod }

const envFlavorVar = "env";
Env env = FlavorConfig.instance.variables[envFlavorVar];
bool isProd = env == Env.prod;
bool isAcceptance = env == Env.acceptance;

const _acceptance = Environment("acceptance");

extension AppEnv on Env {
  Environment get injectableEnv {
    switch (this) {
      case Env.acceptance:
        return _acceptance;
      case Env.prod:
        return prod;
    }
  }
}
