import 'dart:developer';

import 'package:vm_service/utils.dart';
import 'package:vm_service/vm_service_io.dart';

Future<int> obtainVMService() async {
  print("Obtaining VM Service");
  final serverUri = (await Service.getInfo()).serverUri;
  if (serverUri == null) {
    throw Exception('Cannot find serverUri for VmService. '
        'Ensure you run like `dart run --enable-vm-service path/to/your/file.dart`');
  }

  final vmService = await vmServiceConnectUri(
    convertToWebSocketUrl(serviceProtocolUrl: serverUri).toString(),
  );

  print("vmService: $vmService");
  await vmService.dispose();

  return 6 * 7;
}
