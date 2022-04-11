import 'package:angular_app/name.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'name_test.mocks.dart';

@GenerateMocks([NameGateway, NamePresenter, NameState])
void main() {
  test('NameGateway', () {
    expect(NameGateway().getName(), "Dart Google");
  });

  test('NameUsecase', () {
    var inputPort = MockNameGateway();
    var outputPort = MockNamePresenter();
    when(inputPort.getName()).thenReturn("Mocked Name");
    NameUsecase(inputPort, outputPort).getName();
    verify(inputPort.getName());
    verify(outputPort.setName(argThat(equals("Mocked Name"))));
  });

  test('NamePresenter', () {
    var state = NameState();
    NamePresenter(state).setName("Dart Google");
    expect(state.name, "Dart Google");
  });
}
