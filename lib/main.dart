import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color cupertinoColor = Color(0xFF44A78A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFF3),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "P E T  C L U B ",
                    style: TextStyle(color: Colors.black38),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 250,
                    child: PageView(
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            height: 200,
                            width: 200,
                            child: Image.asset('assets/17.png')),
                        Container(
                            height: 200,
                            width: 200,
                            child: Image.asset('assets/18.png')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: CupertinoButton(
                      color: cupertinoColor,
                      child: Text("Let's Start",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      borderRadius: BorderRadius.circular(5),
                      pressedOpacity: 0.5,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: CupertinoButton(
                      color: cupertinoColor,
                      child: Text("Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      borderRadius: BorderRadius.circular(5),
                      pressedOpacity: 0.5,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
