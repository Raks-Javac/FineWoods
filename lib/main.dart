import 'dart:async';
import 'package:fineWoods/fineWoods.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: FineWoods(),
    );
  }
}

//FineWood SplashScreen
class FineWoods extends StatefulWidget {
  FineWoods({Key key}) : super(key: key);
  @override
  createState() => _FineWoodsState();
}

class _FineWoodsState extends State<FineWoods> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/chair8.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Fine",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontFamily: "GrenzeGotisch"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, right: 10.0, left: 8.0),
                      child: Material(
                        color: Colors.brown,
                        elevation: 2,
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 10, right: 10, bottom: 10),
                          child: Text(
                            "Woods",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: "GrenzeGotisch"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
