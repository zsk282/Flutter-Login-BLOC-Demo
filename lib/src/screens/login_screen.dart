import 'package:flutter/material.dart';
import '../blocks/bloc.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top:20.0)),
          submitButton()
        ],
      )
    );
  }
  Widget emailField(){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          )
        );
      },
    );




  }

   Widget passwordField(){
    return TextField(
      obscureText: true, //show dots in password 
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password'
      ),
    );
  }

  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      color: Colors.redAccent,
      onPressed: (){},
    );
  }
}
