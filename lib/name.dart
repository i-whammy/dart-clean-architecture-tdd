class NameState {
  String name = "";
}

class NamePresenter implements NameOutputPort {
  NameState _state;
  NamePresenter(NameState this._state) {}

  @override
  void setName(String name) {
    this._state.name = name;
  }
}

class NameGateway implements NameInputPort {
  @override
  String getName() {
    return "Dart Google";
  }
}

abstract class NameOutputPort {
  void setName(String name) {}
}

abstract class NameInputPort {
  String getName();
}

class NameUsecase {
  late NameInputPort _inputPort;
  late NameOutputPort _outputPort;
  NameUsecase(NameInputPort this._inputPort, NameOutputPort this._outputPort) {}

  void getName() {
    var name = _inputPort.getName();
    this._outputPort.setName(name);
  }
}
