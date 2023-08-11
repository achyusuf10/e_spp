import 'dart:io';

import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/auth/presentation/cubit/login_cubit.dart';
import 'package:e_spp/app/features/auth/presentation/cubit/splash_cubit.dart';
import 'package:e_spp/app/features/home/presentation/cubit/home_cubit.dart';
import 'package:e_spp/app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:e_spp/app/features/transaction/presentation/cubit/history_bill_cubit.dart';
import 'package:e_spp/app/features/transaction/presentation/cubit/history_payment_cubit.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/config/themes/app_themes.dart';
import 'package:e_spp/constant/common/app_const.dart';
import 'package:e_spp/core/injection/di.dart';
import 'package:e_spp/core/logger/auto_route_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/logger/bloc_observer.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(UserModelAdapter());
  await configureDependencies();
  HttpOverrides.global = MyHttpOverrides();
  Bloc.observer = BlocEventLogger();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConst.designSize,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<SplashCubit>(create: (context) => di.get()),
            BlocProvider<LoginCubit>(create: (context) => di.get()),
            BlocProvider<HomeCubit>(create: (context) => di.get()),
            BlocProvider<HistoryBillCubit>(create: (context) => di.get()),
            BlocProvider<HistoryPaymentCubit>(create: (context) => di.get()),
            BlocProvider<ProfileCubit>(create: (context) => di.get()),
          ],
          child: MaterialApp.router(
            routerConfig: di.get<AppRouter>().config(
                  navigatorObservers: () => [
                    AutoRouteEventObserver(),
                  ],
                ),
            theme: AppThemes.theme,
          ),
        );
      },
    );
  }
}
