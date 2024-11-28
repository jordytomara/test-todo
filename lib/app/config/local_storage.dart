import 'package:get_storage/get_storage.dart';

class ConfigLocalStorage {
  final _getStorage = GetStorage();
  final tokenKey = 'token';
  final officeIdKey = 'officeId';
  final userIdKey = 'userId';
  final sbuIdKey = 'sbuId';

  String getToken() {
    return _getStorage.read(tokenKey) ?? '';
  }

  void saveToken(String? token) {
    _getStorage.write(tokenKey, token);
  }

  void deleteToken(){
    _getStorage.remove(tokenKey);
  }

  int getOfficeId() {
    return _getStorage.read(officeIdKey) ?? 0;
  }

  void saveOfficeId(int? id) {
    _getStorage.write(officeIdKey, id);
  }

  void deleteOfficeId(){
    _getStorage.remove(officeIdKey);
  }

  String getUserId() {
    return _getStorage.read(userIdKey) ?? '';
  }

  void saveUserId(String? userId) {
    _getStorage.write(userIdKey, userId);
  }

  void deleteUserId(){
    _getStorage.remove(tokenKey);
  }

  String getSbuId() {
    return _getStorage.read(sbuIdKey) ?? '';
  }

  void saveSbuId(String? sbuId) {
    _getStorage.write(sbuIdKey, sbuId);
  }

  void deleteSbuId(){
    _getStorage.remove(sbuIdKey);
  }

}