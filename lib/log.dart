import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('android/assets/login.png'),fit: BoxFit.cover)
        ),
        child: Scaffold(backgroundColor: Colors.transparent,
        body: Stack(
    children:[
      Container(
        padding: EdgeInsets.only(left: 30,top:100),
    child: Text('welcome\nhome',style: TextStyle(color:Colors.white,fontSize:33 ),),
    ),
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.7,right: 35,left:35),
        child: Column(children: [
          TextField(decoration: InputDecoration(hintText: 'Email',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
          TextField()
        ],),
      )
    ]
    ),
      ),
    ),
    );
  }
}
