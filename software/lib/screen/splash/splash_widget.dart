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
  bool get secure => false;

  @override
  Future<void> onCreate() async {
    await appStore.init();
    ready();
  }

  @override
  void onReady() {
    bloc.sendUserRetrieveEvent();
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
