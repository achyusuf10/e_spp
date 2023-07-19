import 'dart:io';

import 'package:e_spp/utils/extensions/file_x.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class CompressImageFunc {
  static Future<File> execute({
    required File file,
    double maxSizeInMB = 0.3,
    int qualityCompress = 85,
  }) async {
    try {
      File? result;
      int quality = qualityCompress;
      int ratio = 1;
      if (file.sizeInMB < maxSizeInMB) return file;
      final newPath = p.join((await getTemporaryDirectory()).path,
          '${DateTime.now().toIso8601String()}.${p.extension(file.path)}');
      do {
        result = await FlutterImageCompress.compressAndGetFile(
          file.path,
          newPath,
          quality: quality,
          keepExif: true,
          minHeight: 1000,
          minWidth: 1000,
        );
        if (ratio % 2 == 0) {
          ratio = 1;
        } else {
          ratio = 2;
        }
        // print(ratio);
        quality = quality - ratio * 2;
        // print(quality);
      } while (result!.sizeInMB > maxSizeInMB);
      // print('Size Photo Setelah Dicompress ${result.sizeInMB}');
      return result;
    } catch (e) {
      return file;
    }
  }
}
