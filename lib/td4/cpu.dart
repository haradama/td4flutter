import 'port.dart';
import 'register.dart';
import 'rom.dart';

class CPU {
  Registor registor;
  IOPort port;
  ROM rom;

  CPU(register, port, rom) {
    this.registor = register;
    this.port = port;
    this.rom = rom;
  }

  int fetch() {
    int programCounter = registor.programCounter;
    if (rom.memory.length <= programCounter) {
      return 0;
    }

    int code = rom.read(programCounter);

    return code;
  }

  void decode() {}

  void execute() {}
}
