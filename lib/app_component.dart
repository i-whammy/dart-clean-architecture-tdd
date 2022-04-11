import 'package:angular/angular.dart';
import 'package:angular_app/name.dart';

@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}</h1>',
)
class AppComponent extends OnInit {
  NameUsecase _usecase;
  NameState _state;
  AppComponent(this._usecase, this._state) {}
  String get name => this._state.name;

  @override
  void ngOnInit() {
    _usecase.getName();
  }
}
