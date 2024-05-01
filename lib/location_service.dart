import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<void> requestPermission() async {
    var status = await Permission.location.status;
    if (!status.isGranted) {
      await Permission.location.request();
    }

  }
}