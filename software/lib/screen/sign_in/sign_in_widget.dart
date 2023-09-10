
import 'package:flutter/material.dart';
import '../../abstract/abstract.dart';
import 'sign_in_bloc.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => SignInState();
}

class SignInState extends AbstractState<SignInWidget> {
  SignInBloc bloc = SignInBloc();
  
  @override
  void onCreate() {
  
  }

  @override
  void onReady() {
   
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen(
      appBarTitle: "sign_in",
      body: buildBody(),
    );
  }
  
  Widget buildBody() {
    return Container();
  }
}
