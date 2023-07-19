import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_spp/app/features/auth/domain/usecases/get_user_profile_usecase.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:e_spp/utils/services/dialog_service.dart';
import 'package:e_spp/utils/services/modal_bottom_sheet_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@lazySingleton
class ProfileCubit extends Cubit<ProfileState> {
  final GetContextFunc _getContext;
  final DialogService _dialogService;
  final ModalBottomSheetService _bottomSheetService;
  final GetUserProfileUseCase _getUserProfileUseCase;
  ProfileCubit(
    this._getContext,
    this._dialogService,
    this._bottomSheetService,
    this._getUserProfileUseCase,
  ) : super(const ProfileState());
  TextEditingController nisnC = TextEditingController();
  TextEditingController namaC = TextEditingController();
  TextEditingController dateC = TextEditingController();
  TextEditingController addressC = TextEditingController();
  TextEditingController classC = TextEditingController();
  TextEditingController noHpC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  String stateUserData = '';

  void onInit() async {
    var data = await _getUserProfileUseCase.callLocal();
    nisnC.clear();
    namaC.clear();
    dateC.clear();
    addressC.clear();
    classC.clear();
    noHpC.clear();
    emailC.clear();
    data.whenOrNull(
      success: (data) {
        nisnC.text = data.nisn.toString();
        namaC.text = data.name ?? '';
        noHpC.text = data.phoneNumber ?? '';
        emailC.text = data.email.toString();
        addressC.text = data.alamat.toString();
        stateUserData = nisnC.text +
            namaC.text +
            dateC.text +
            addressC.text +
            classC.text +
            noHpC.text +
            emailC.text;
      },
    );

    emit(
      state.copyWith(
        isFormEdited: false,
        selectedImageProfile: null,
      ),
    );
  }

  void onChangeFormField() {
    String tempData = nisnC.text +
        namaC.text +
        dateC.text +
        classC.text +
        noHpC.text +
        emailC.text;

    if (tempData == stateUserData) {
      emit(state.copyWith(isFormEdited: false));
    } else {
      emit(state.copyWith(isFormEdited: true));
    }
  }

  void onTapChangeImage() {
    _bottomSheetService.pickImage(
      onResult: (file) {
        if (file == null) return;
        emit(state.copyWith(selectedImageProfile: file));
      },
    );
  }

  void onTapSave() {}
}
