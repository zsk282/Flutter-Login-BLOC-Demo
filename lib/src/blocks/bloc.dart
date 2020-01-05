import 'dart:async';
import '../validators/vaildators.dart';

class Bloc with Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // getters: Add data to stream 
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // getters: change the data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // close open Stram sinks ** dart kindaa like it to be this way 
  dispose(){
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();