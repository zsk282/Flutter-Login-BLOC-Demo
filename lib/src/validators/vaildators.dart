import 'dart:async';

class Validators{
  final validateEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){
      if(email.contains('@')){
        sink.add(email);
      }else{
        sink.addError('Enter a valid Email');
      }
    }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
    handleData: (data,sink){
      if(data.length > 3){
        sink.add(data);
      }else{
        sink.addError("Short Password");
      }
    }
  );
}