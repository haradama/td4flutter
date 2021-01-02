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
