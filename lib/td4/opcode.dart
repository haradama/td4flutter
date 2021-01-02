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
