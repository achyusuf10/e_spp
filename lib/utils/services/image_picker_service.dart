import 'dart:io';

import 'package:e_spp/utils/functions/compress_image_func.dart';
import 'package:e_spp/utils/functions/crop_image_func.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ImagePickerService {
  late ImagePicker _imagePicker;

  ImagePickerService() {
    _imagePicker = ImagePicker();
  }

  Future<File?> fromCamera({
    double qualityCompress = 0.17,
  }) async {
    final result = await _pickAndCompress(
      source: ImageSource.camera,
      qualityCompress: qualityCompress,
    );
    return result;
  }

  Future<File?> fromGallery({
    double qualityCompress = 0.17,
  }) async {
    final result = await _pickAndCompress(
      source: ImageSource.gallery,
      qualityCompress: qualityCompress,
    );
    return result;
  }

  Future<File?> _pickAndCompress({
    required ImageSource source,
    required double qualityCompress,
  }) async {
    XFile? pickedFile = await _imagePicker.pickImage(source: source);
    if (pickedFile == null) return null;
    final croppedImage = await CropImageFunc.execute(File(pickedFile.path));
    if (croppedImage == null) return null;
    var compressImage = await CompressImageFunc.execute(
      file: croppedImage,
      maxSizeInMB: qualityCompress,
    );
    return compressImage;
  }
}
