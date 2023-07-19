import 'dart:io';

import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:e_spp/utils/services/dialog_service.dart';
import 'package:e_spp/utils/services/image_picker_service.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ModalBottomSheetService {
  final ImagePickerService imagePickerService;
  final GetContextFunc getContext;
  final DialogService _dialogService;

  ModalBottomSheetService(
      this.getContext, this.imagePickerService, this._dialogService);

  Future<void> pickImage({
    required Function(File? pickedFile) onResult,
    double? qualityCompress,
  }) async {
    return await showModalBottomSheet(
      backgroundColor: Colors.white,
      context: getContext.exec,
      builder: (context) {
        return Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.black),
              title: const Text(
                'Ambil Dari Kamera',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () async {
                _dialogService.closeOverlay();
                _dialogService.loading();
                var result = await imagePickerService.fromCamera(
                  qualityCompress: qualityCompress ?? 0.17,
                );
                _dialogService.closeOverlay();
                onResult(result);
              },
            ),
            ListTile(
              leading: const Icon(Icons.image, color: Colors.black),
              title: const Text(
                'Ambil Dari Galeri',
                // style: AppTextStyle.fBlack400Poppins(14),
              ),
              onTap: () async {
                _dialogService.closeOverlay();
                _dialogService.loading();
                var result = await imagePickerService.fromGallery(
                  qualityCompress: qualityCompress ?? 0.17,
                );
                _dialogService.closeOverlay();
                onResult(result);
              },
            ),
          ],
        );
      },
    );
  }
}
