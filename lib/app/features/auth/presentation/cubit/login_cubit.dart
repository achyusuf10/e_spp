import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:e_spp/app/features/auth/domain/usecases/get_user_profile_usecase.dart';
import 'package:e_spp/app/features/auth/domain/usecases/login_usecase.dart';
import 'package:e_spp/app/features/auth/domain/usecases/update_user_profile_usecase.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:e_spp/utils/services/dialog_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  final GetContextFunc _getContext;
  final LoginUseCase _loginUseCase;
  final DialogService _dialogService;
  final UpdateUserProfileUseCase _updateProfileUC;
  final GetUserProfileUseCase _getUserProfileUC;

  LoginCubit(
    this._getContext,
    this._loginUseCase,
    this._dialogService,
    this._updateProfileUC,
    this._getUserProfileUC,
  ) : super(const LoginState());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController usernameC;
  late TextEditingController passwordC;

  void onInit() {
    usernameC = TextEditingController();
    passwordC = TextEditingController();
    emit(const LoginState());
  }

  void toogleRememberMe(bool value) {
    emit(
      state.copyWith(
        isRememberMe: value,
      ),
    );
  }

  void onTapSignIn() async {
    if (!formKey.currentState!.validate()) return;
    _dialogService.loading();
    var res = await _loginUseCase.call(
      LoginParams(
        email: usernameC.text,
        password: passwordC.text,
      ),
    );
    res.when(
      success: (token) async {
        // _updateProfileUC.call(data);

        var resProfile = await _getUserProfileUC.call();
        resProfile.when(
          success: (data) {
            _updateProfileUC.call(data);
            _getContext.exec.router.replaceAll(
              [
                const HomeRoute(),
              ],
            );
          },
          error: (message, _, __, ___) {
            _dialogService.closeOverlay();
            _dialogService.dialogProblem(
              desc: message,
            );
          },
        );
      },
      error: (message, data, code, exception) {
        _dialogService.closeOverlay();
        _dialogService.dialogProblem(
          desc: message,
        );
      },
    );
  }
}
