import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flare Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _animationName = "coding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flare Anim'),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Container(
                  width: double.infinity,
                  height: 200,
                  child: buildFlareActor(flareActor: "assets/Loading.flr")),
              SizedBox(
                height: 80,
              ),
              Container(
                  width: double.infinity,
                  height: 200,
                  child: buildFlareActor(flareActor: "assets/coding.flr")),
              SizedBox(
                height: 80,
              ),
              Container(
                  width: double.infinity,
                  height: 200,
                  child:
                      buildFlareActor(flareActor: "assets/SmileySwitch.flr")),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }

  FlareActor buildFlareActor({required String? flareActor}) {
    return FlareActor(flareActor,
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: _animationName);
  }
}
