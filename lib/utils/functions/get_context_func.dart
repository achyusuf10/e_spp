import 'package:e_spp/config/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetContextFunc {
  final AppRouter _appRouter;

  GetContextFunc(this._appRouter);

  BuildContext get exec {
    final context = _appRouter.navigatorKey.currentContext;
    return context ?? (throw ('Have you forgot to setup routes?'));
  }
}
