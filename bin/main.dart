import 'package:vm_demo_docker/vm_demo_docker.dart';

Future<void> main(List<String> arguments) async {
  print("Starting main");
  await obtainVMService();
  print("Finished");
}
