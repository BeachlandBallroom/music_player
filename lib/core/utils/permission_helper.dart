import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static Future<void> requestStoragePermission() async {
    await Permission.storage.request();
  }
}