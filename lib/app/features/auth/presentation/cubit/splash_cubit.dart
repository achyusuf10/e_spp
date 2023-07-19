import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:e_spp/app/features/auth/domain/usecases/get_user_profile_usecase.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

@lazySingleton
class SplashCubit extends Cubit<SplashState> {
  final GetUserProfileUseCase _getUserProfileUseCase;
  final GetContextFunc _getContext;
  SplashCubit(this._getContext, this._getUserProfileUseCase)
      : super(const SplashState());

  Future<void> onInit() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appVersion = '${packageInfo.version}+${packageInfo.buildNumber}';
    emit(state.copyWith(appVersion: appVersion));
    await checkAutoLogin();
  }

  Future<void> checkAutoLogin() async {
    var res = await _getUserProfileUseCase.callLocal();
    await Future.delayed(const Duration(milliseconds: 1500));
    res.when(success: (data) {
      _getContext.exec.router.replaceNamed(AppRoutes.home);
    }, error: (_, __, ___, ____) {
      _getContext.exec.router.replaceNamed(AppRoutes.login);
    });
  }
}
