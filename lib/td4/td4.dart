class Opcode {
  static const AddA = [false, false, false, false]; // 0b0000
  static const AddB = [false, true, false, true]; // 0b0101
  static const MovA = [false, false, true, true]; // 0b0011
  static const MovB = [false, true, true, true]; // 0b0111
  static const MovA2B = [false, false, false, true]; // 0b0001
  static const MovB2A = [false, true, false, false]; // 0b0100
  static const Jmp = [true, true, true, true]; // 0b1111
  static const Jnc = [true, true, true, false]; // 0b1110
  static const InA = [false, false, true, false]; // 0b0010
  static const InB = [false, true, true, false]; // 0b0110
  static const OutB = [true, false, false, true]; // 0b1001
  static const OutIm = [true, false, true, true]; // 0b1011
}

class Registor {
  int registerA;
  int registerB;
  int carryFlag;
  int programCounter;

  Registor() {
    this.registerA = 0;
    this.registerB = 0;
    this.carryFlag = 0;
    this.programCounter = 0;
  }

  void setProgramCounter(int newValue) {
    this.programCounter = newValue;
  }

  void incrementProgramCounter() {
    this.programCounter++;
  }

  void setCarryFlag(int newValue) {
    this.carryFlag = newValue;
  }

  void setRegisterA(int newValue) {
    this.registerA = newValue;
  }

  void setRegisterB(int newValue) {
    this.registerB = newValue;
  }
}

class IOPort {
  int input;
  int output;

  IOPort() {
    this.input = input;
    this.output = output;
  }
}

class ROM {
  List<int> memory;

  int read(int index) {
    return memory[index];
  }
}

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
