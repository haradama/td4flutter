class IOPort {
  bool _input;
  bool _output;

  IOPort() {
    this._input = false;
    this._output = false;
  }

  void setInput(bool input) {
    this._input = input;
  }

  void setOutput(bool output) {
    this._output = output;
  }

  bool getInput() {
    return this._input;
  }

  bool getOutput() {
    return this._output;
  }
}
