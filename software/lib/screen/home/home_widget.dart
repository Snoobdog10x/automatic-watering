import 'package:flutter/material.dart';
import '../../abstract/abstract.dart';
import 'home_bloc.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => HomeState();
}

class HomeState extends AbstractState<HomeWidget> {
  @override
  HomeBloc initBloc() => HomeBloc();

  @override
  HomeBloc get bloc => super.bloc as HomeBloc;
  
  @override
  void onCreate() {
  
  }

  @override
  void onReady() {
   
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen(
      appBarTitle: "home",
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