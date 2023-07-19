import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/auth/presentation/pages/login_page.dart';
import 'package:e_spp/app/features/auth/presentation/pages/splash_page.dart';
import 'package:e_spp/app/features/profile/presentation/pages/profile_page.dart';
import 'package:e_spp/app/features/transaction/domain/models/trx_model.dart';
import 'package:e_spp/app/features/transaction/presentation/pages/detail_bill_page.dart';
import 'package:e_spp/app/features/transaction/presentation/pages/detail_payment_page.dart';
import 'package:e_spp/app/features/transaction/presentation/pages/history_bill_page.dart';
import 'package:e_spp/app/features/transaction/presentation/pages/history_payment_page.dart';
import 'package:e_spp/app/features/transaction/presentation/pages/web_view_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../app/features/home/presentation/pages/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "Route|Page,Route",
  generateForDir: [
    'lib/config/routes',
    'lib/app/features/auth/presentation',
    'lib/app/features/home/presentation',
    'lib/app/features/profile/presentation',
    'lib/app/features/transaction/presentation',
  ],
)
@lazySingleton
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          initial: true,
          path: AppRoutes.splash,
          page: SplashRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.login,
          page: LoginRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.home,
          page: HomeRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.historyPayment,
          page: HistoryPaymentRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.detailPayment,
          page: DetailPaymentRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.historyBill,
          page: HistoryBillRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.detailBill,
          page: DetailBillRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.profile,
          page: ProfileRoute.page,
        ),
        CustomRoute(
          path: AppRoutes.webView,
          page: WebViewRoute.page,
        ),
      ];
}

class AppRoutes {
  static const splash = '/';
  static const home = '/home_page';
  static const login = '/login_page';
  static const profile = '/profile_page';
  static const historyPayment = '/historyPayment_page';
  static const detailPayment = '/detailPayment_page';
  static const historyBill = '/historyBill_page';
  static const detailBill = '/detailBill_page';
  static const webView = '/webView_page';
}
