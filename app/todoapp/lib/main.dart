import 'package:flutter/material.dart';
import 'UI/intray_style.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: [
                    Container(
                      color: darkGrey,
                      child: IntrayPage(),
                    ),
                    new Container(
                      color: Colors.orange,
                    ),
                    new Container(
                      color: Colors.lightGreen,
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Intray',
                        style: intrayTextStyle,
                      ),
                      Container(),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(
                    top: 110,
                    left: MediaQuery.of(context).size.width * 0.5 - 35,
                  ),
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 60,
                    ),
                    backgroundColor: redAccent,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.calendar_today),
                  ),
                  Tab(
                    icon: new Icon(Icons.add),
                  ),
                  Tab(
                    icon: new Icon(Icons.menu),
                  ),
                ],
                labelColor: darkGrey,
                unselectedLabelColor: lightGrey,
                indicatorColor: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
