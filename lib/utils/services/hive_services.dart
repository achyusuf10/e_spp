import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  final Box<dynamic> _box;
  const HiveService._(this._box);

  static Future<HiveService> instance() async {
    // Note : --------------- Setting Hive ---------------
    await Hive.initFlutter();
    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryprionKey = await secureStorage.read(key: 'AESKey');
    if (encryprionKey == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'AESKey',
        value: base64UrlEncode(key),
      );
    }
    final key = await secureStorage.read(key: 'AESKey');
    final encryptionKey = base64Url.decode(key!);
    final box = await Hive.openBox(
      'box',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    return HiveService._(box);
  }

  void set<T>({required String key, required T data}) async {
    await _box.put(key, data);
  }

  T? get<T>({required String key}) {
    return _box.get(key);
  }

  void delete(String key) async {
    await _box.delete(key);
  }

  void reset() async {
    await _box.clear();
  }
}
