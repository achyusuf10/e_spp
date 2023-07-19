import 'dart:io';

extension FileExtension on File {
  double get sizeInMB {
    int sizeInBytes = lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    return sizeInMb;
  }
}
