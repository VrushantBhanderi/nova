import 'package:flutter/material.dart';
import 'package:nova/homescreen1.dart';
import 'package:nova/homescreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String id = "home_screen";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'NOVA E-commerence'),
      //initialRoute: MyApp.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        HomeScreen2.id: (context) => HomeScreen2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffE5E5E5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 60),
                  Text(
                    'Discover a New For You',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff3E3E3E),
                        fontSize: 22,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Lots of new products here and decide \n which product is best for you',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(62, 62, 62, 0.6),
                        fontSize: 16,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 50.38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                          color: Color(0xffFF7750),
                        ),
                        height: 9,
                        width: 28,
                      ),
                      SizedBox(width: 15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                          color: Color(0xffCACACA),
                        ),
                        height: 9,
                        width: 9,
                      ),
                      SizedBox(width: 15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                          color: Color(0xffCACACA),
                        ),
                        height: 9,
                        width: 9,
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: MaterialButton(
                      minWidth: 325.0,
                      height: 63.83,
                      color: Color(0xffFF7750),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomeScreen.id);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
