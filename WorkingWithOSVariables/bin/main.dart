import 'package:WorkingWithOSVariables/WorkingWithOSVariables.dart' as WorkingWithOSVariables;
import 'dart:io';
import 'dart:convert';   //Communicating with processes

/*
What is the PATH variable?

Where the operating system will look for executables.

What is an exit code?
A code the process gives to operating system to communicate status.

Dart run  on all major mobile and desktop operating systems
 */
void main(List<String> arguments) {
  print('Hello world: ${WorkingWithOSVariables.calculate()}!');
  print('OS: ${Platform.operatingSystem} ${Platform.version}');
 //OS Variable Sample
  if(Platform.isMacOS) {
    print('Run Mac code');
  } else {
    print('Run normal code');
  }

  print('Path: ${Platform.script.path}');
  print('Path: ${Platform.executable}');

  print('Env:');
  Platform.environment.keys.forEach((key) {
    print('${key} ${Platform.environment[key]}');
  });

  //Running Processes Sample

  /*
  Program is an executable file. A process is the copy of that executable in memory.
   */

  print('in List All Files in a Directory - Linux Specific \n');
  //List All Files in a Directory - Linux Specific
  Process.run('ls', ['-l']).then((ProcessResult results) {
    print(results.stdout);
    print('Exit code: ${results.exitCode}'); // 0 is good
  });
  //Communicating with processes
  print('\n Communicating with processes \n ');

  //Linux Specific
  Process.start('cat', []).then((Process process) {  //console DIR
    //tranform the output

    print('tranform the output');
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });
      //Send to the process
      process.stdin.writeln('Hello World');

      //Stop the process
      Process.killPid(process.pid);

      //Get the exit code
    process.exitCode.then((int code) {
      print('Exit code:${code}');

      //exit
      exit(0);
    });

  });

  //Assignment

  print('\n --- Assignment --- \n ');
  if(Platform.isWindows) print('This is Windows');
  if(Platform.isLinux) print('This is Linux');
  if(Platform.isMacOS) print('This is Mac');
  if(Platform.isAndroid) print('This is Android');
  if(Platform.isIOS) print('This is IOS');
  if(Platform.isFuchsia) print('This is Fuchsia');

  print(' ${Platform.environment['PATH']} \n');


}
