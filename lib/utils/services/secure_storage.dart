import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecureStorage {
  static final SecureStorage _instance = SecureStorage._internal();
  factory SecureStorage() => _instance;
  final storage = const FlutterSecureStorage();

  SecureStorage._internal();

  Future<String?> readData({required String key}) async {
    return storage.read(key: key);
  }

  Future writeData({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  Future removeData({required String key}) async {
    await storage.delete(key: key);
  }

  Future clearData() async {
    await storage.deleteAll();
  }
}

class SharedStorage {
  static final SharedStorage _instance =
      SharedStorage._(); // Singleton instance
  static const int _cacheExpirationSeconds =
      1800; // Expiration time in seconds (1 hour)

  late SharedPreferences _storage;
  factory SharedStorage() {
    return _instance;
  }

  SharedStorage._(); // Private constructor for singleton

  Future<void> initShared() async {
    _storage = await SharedPreferences.getInstance();
  }

  Future<void> cacheApiData(
      {required String key, required String value}) async {
    String timeKey = 'time_$key';
    await _storage.setString(key, value);
    await _storage.setInt(timeKey, DateTime.now().millisecondsSinceEpoch);
  }

  String? getCachedApiData({required String key}) {
    String timeKey = 'time_$key';

    final dynamic cachedTime = _storage.getInt(timeKey);

    final int currentTime = DateTime.now().millisecondsSinceEpoch;

    if (cachedTime != null &&
        currentTime - cachedTime < _cacheExpirationSeconds * 1000) {
      // Cache is still valid, return the cached data
      return _storage.getString(key);
    } else {
      // Cache has expired or does not exist
      return null;
    }
  }

  Future<bool> deleteCachedApiData({required String key}) async {
    final String currentTimeKey = '${key}_time';
    await initShared();
    await _storage.remove(key);
    await _storage.remove(currentTimeKey);
    return true; // Deletion success
  }

  clearAll() {
    _storage.clear();
  }
}
