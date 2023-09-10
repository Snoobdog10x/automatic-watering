
import 'package:flutter/material.dart';
import '../../abstract/abstract.dart';
import 'login_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => LoginState();
}

class LoginState extends AbstractState<LoginWidget> {
  LoginBloc bloc = LoginBloc();
  
  @override
  void onCreate() {
  
  }

  @override
  void onReady() {
   
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen(
      appBarTitle: "login",
      body: buildBody(),
    );
  }
  
  Widget buildBody() {
    return Container();
  }
}
