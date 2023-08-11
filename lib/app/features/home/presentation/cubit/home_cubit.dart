import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/auth/domain/usecases/get_user_profile_usecase.dart';
import 'package:e_spp/app/features/auth/domain/usecases/update_user_profile_usecase.dart';
import 'package:e_spp/app/features/home/domain/usecases/logout_usecase.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:e_spp/utils/services/dialog_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  final GetContextFunc _getContext;
  final DialogService _dialogService;
  final GetUserProfileUseCase _getProfileUC;
  final LogoutUseCase _logoutUseCase;
  final UpdateUserProfileUseCase _updateUserProfileUseCase;

  HomeCubit(
    this._getContext,
    this._dialogService,
    this._getProfileUC,
    this._logoutUseCase,
    this._updateUserProfileUseCase,
  ) : super(
          HomeState(
            userData: UserModel(),
          ),
        );

  void onInit() async {
    var res = await _getProfileUC.call();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appVersion = '${packageInfo.version}+${packageInfo.buildNumber}';
    res.whenOrNull(
      success: (data) {
        emit(HomeState(
          userData: data,
          appVersion: appVersion,
        ));
      },
    );
  }

  void onRefresh() async {
    var res = await _getProfileUC.call();

    res.whenOrNull(
      success: (data) {
        _updateUserProfileUseCase.call(data);
        emit(state.copyWith(userData: data));
      },
    );
  }

  void onTapProfile() {
    _getContext.exec.router.pushNamed(AppRoutes.profile);
  }

  void onTapBill() {
    _getContext.exec.router.pushNamed(AppRoutes.historyBill);
  }

  void onTapHistoryPayment() {
    _getContext.exec.router.pushNamed(AppRoutes.historyPayment);
  }

  void onTapLogout() {
    _dialogService.mainPopUp(
      title: 'Keluar Aplikasi',
      urlImage: ImgAssetsConst.icLogout,
      desc: "Apakah kamu yakin ingin keluar\naplikasi E-SPP?",
      mainButtonFunction: () {
        _logoutUseCase.call();
        _getContext.exec.router.replaceAll(
          [
            const LoginRoute(),
          ],
        );
      },
      secondaryButtonFunction: () {
        _dialogService.closeOverlay();
      },
      mainButtonText: 'Ya',
      secondaryButtonText: 'Tidak',
    );
  }
}
