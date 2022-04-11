import 'package:angular/angular.dart';
import 'package:angular_app/app_component.template.dart' as ng;
import 'package:angular_app/name.dart';
import 'main.template.dart' as self;

@GenerateInjector([
  ClassProvider(NameUsecase),
  ClassProvider(NameInputPort, useClass: NameGateway),
  ClassProvider(NameOutputPort, useClass: NamePresenter),
  ClassProvider(NameState)
])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: rootInjector);
}
