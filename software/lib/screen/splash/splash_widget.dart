import 'package:flutter/material.dart';
import '../../abstract/abstract.dart';
import '../../shared_product/widget/text_input.dart';
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
    if (!appStore.isDebug) {
      // bloc.sendUserRetrieveEvent();
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildScreen(
      appBarTitle: "splash",
      body: buildBody(),
    );
  }

  Widget buildBody() {
    if (appStore.isDebug) {
      return buildDefaultScreen();
    }

    return buildSplashScreen();
  }

  Widget buildDefaultScreen() {
    return Column(
      children: [
        TextInput(
          hintText: 'email',
        ),
        TextInput(
          hintText: 'password',
        ),
        SizedBox(
          height: 40,
          width: screenWidth,
          child: TextButton(
            onPressed: () {
              // bloc.sendUserRetrieveEvent();
            },
            child: Text("login"),
          ),
        ),
      ],
    );
  }

  Widget buildSplashScreen() {
    return Container(child: CircularProgressIndicator(color: Colors.green));
  }

  @override
  void destroy() {
    // TODO: implement destroy
  }
}
