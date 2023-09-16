import 'package:flutter/material.dart';
import '../../abstract/abstract.dart';
import 'splash_bloc.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => SplashState();
}

class SplashState extends AbstractState<SplashWidget> {
  @override
  SplashBloc initBloc() => SplashBloc();

  @override
  SplashBloc get bloc => super.bloc as SplashBloc;
  
  @override
  void onCreate() {
  
  }

  @override
  void onReady() {
   
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen(
      appBarTitle: "splash",
      body: buildBody(),
    );
  }
  
  Widget buildBody() {
    return Container();
  }
  
  @override
  void destroy() {
    // TODO: implement destroy
  }
}