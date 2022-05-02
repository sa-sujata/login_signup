import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //use MaterialApp() widget like this
        home: Home() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

//create new class for "home" property of MaterialApp()
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          //MediaQuery methods in use
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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,right: 35,left:35),
                    child: Column(children: [
                      TextField(decoration: InputDecoration(hintText: 'Email',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                      TextField()
                    ],),
                  )
                ]
            ),
          ),
        )
    );
  }
}

