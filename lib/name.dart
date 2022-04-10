class NameState {
  String name = "";
  NameState() {}
}

class NamePresenter implements NameOutputPort {
  late NameState _state;
  NamePresenter(NameState state) {
    this._state = state;
  }

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
  NameUsecase(NameGateway gateway, NamePresenter presenter) {
    this._inputPort = gateway;
    this._outputPort = presenter;
  }

  void getName() {
    var name = _inputPort.getName();
    this._outputPort.setName(name);
  }
}
