import 'package:angular/angular.dart';
import 'package:angular_app/name.dart';

@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}</h1>',
)
class AppComponent {
  var name = 'Angular';
}
