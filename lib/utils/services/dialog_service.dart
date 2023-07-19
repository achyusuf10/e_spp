import 'dart:async';

import 'package:e_spp/app/widgets/circular_loading_widget.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DialogService {
  final GetContextFunc getContext;
  DialogService(this.getContext);

  void loading() {
    showDialog(
      barrierDismissible: false,
      context: (getContext.exec),
      builder: (BuildContext context) {
        return WillPopScope(
          child: const CircularLoadingWidget(),
          onWillPop: () => Future.value(false),
        );
      },
    );
  }

  void closeOverlay() {
    try {
      Navigator.pop(getContext.exec);
    } on Exception catch (e) {
      throw ('Exception occurred in pop: $e');
    }
  }

  void mainPopUp({
    /// Default True
    bool barrierDismissible = true,
    required String title,
    required String desc,
    String urlImage = '',
    String mainButtonText = 'Tutup',
    String secondaryButtonText = '',
    Function()? mainButtonFunction,
    Function()? secondaryButtonFunction,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      context: (getContext.exec),
      builder: (BuildContext context) {
        return WillPopScope(
          child: AlertDialog(
            actionsPadding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
            actions: [
              Row(
                children: [
                  Expanded(
                    child: MainButton(
                      text: mainButtonText,
                      onTap: mainButtonFunction ??
                          () {
                            closeOverlay();
                          },
                    ),
                  ),
                  if (secondaryButtonFunction != null)
                    SizedBox(
                      width: 10.w,
                    ),
                  if (secondaryButtonFunction != null)
                    Expanded(
                      child: MainButton.outlined(
                        text: secondaryButtonText,
                        onTap: secondaryButtonFunction,
                      ),
                    ),
                ],
              )
            ],
            actionsAlignment: MainAxisAlignment.spaceBetween,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (urlImage.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Image.asset(
                      urlImage,
                      height: 128.h,
                    ),
                  ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          onWillPop: () => Future.value(barrierDismissible),
        );
      },
    );
  }

  void dialogProblem({
    /// Default True
    bool barrierDismissible = true,
    String title = 'Ups Ada Masalah',
    required String desc,
  }) {
    mainPopUp(
      title: title,
      desc: desc,
      barrierDismissible: barrierDismissible,
      urlImage: ImgAssetsConst.dialogFailed,
    );
  }

  void dialogSuccess({
    /// Default True
    bool barrierDismissible = true,
    String title = 'Sukses',
    required String desc,
  }) {
    mainPopUp(
      title: title,
      desc: desc,
      barrierDismissible: barrierDismissible,
      urlImage: ImgAssetsConst.dialogSuccess,
    );
  }
}
