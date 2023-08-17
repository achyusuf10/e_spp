import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/auth/presentation/cubit/splash_cubit.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/core/injection/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashCubit _splashCubit;

  @override
  void initState() {
    _splashCubit = di.get<SplashCubit>();
    _splashCubit.onInit();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _splashCubit,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  ImgAssetsConst.bgSplash,
                  height: 200.h,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                children: [
                  const Spacer(),
                  Center(
                    child: Text(
                      'Madrasah Ibtidaiyah Al-Huda\nKota Malang',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.blackSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  BlocBuilder<SplashCubit, SplashState>(
                    builder: (context, state) {
                      if (state.appVersion.isEmpty) return const SizedBox();
                      return Center(
                        child: Text(
                          'v.${state.appVersion}',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.grayPrimary,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
