import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value1='Click 1';
  String value2='Click 2';

  void onclick1(){
    setState(() {
      value1='Button 1';
    });
  }
  void onclick2(String value3){
    setState(() {
      value2=value3;
    });
  }
  void onclick3(){
    setState(() {
      value1='Click 1';
      value2='Click 2';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('ElevatedButton'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          ElevatedButton(
            child: Text('1st button',style: TextStyle(color:Colors.white),),
            onPressed: ()=>onclick1()
          ),
          Text(value1, style: TextStyle(color: Colors.blueGrey,fontSize:60),),

          Divider(height:30),

          ElevatedButton(
            child: Text('2nd button',style: TextStyle(color:Colors.black),),
            onPressed: () {onclick2('Pass Value');}
          ),
          Text(value2, style: TextStyle(color: Colors.deepPurple,fontSize:60),),

          Divider(height:10),

          ElevatedButton(
            child: Text('Reset',style: TextStyle(color:Colors.yellowAccent),),
            onPressed: ()=>onclick3()
          ),

        ],
      ),
    );
  }
}