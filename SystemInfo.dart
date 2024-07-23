import 'dart:io';

void main() {
  displaySystemInfo();
}

void displaySystemInfo() {
  print('System Infomation ');

  if (Platform.isWindows){
    print('Operating system: Windows');
    print('Version: ${Platform.operatingSystemVersion}');
  } else if (Platform.isLinux) {
    print('Operating system: Linux');
    print('Version: ${Platform.operatingSystemVersion}');
  } else if (Platform.isMacOS) {
     print('Operating system: MacOS');
    print('Version: ${Platform.operatingSystemVersion}');
  } else {
    print('Operating system: ${Platform.operatingSystem}');
  }

  print('Processor infomation: ');
  print('Number of Precessors: ${Platform.numberOfProcessors}');
  print('System Architecture: ${Platform.operatingSystem}');

  print('Memory Infomation: ');
  final sysMem = ProcessInfo.currentRss;
  print('Total System Memory: ${sysMem ~/ 1024} KB');

  print('Dart Version: ');
  print('Version: ${Platform.version}');
  print('Dart Runtime: ${Platform.executable}');
}