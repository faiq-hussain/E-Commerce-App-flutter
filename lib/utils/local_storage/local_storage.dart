import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class localStorage {
  static final localStorage _instance = localStorage._internal();

  factory localStorage() {
    return _instance;
  }

  localStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
