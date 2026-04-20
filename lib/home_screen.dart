import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(centerTitle: true,title: Text("Home Screen",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),backgroundColor: Colors.blueAccent,),
          body: Center(child: MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
          },child: Text("puch"),color: Colors.blueAccent,)),
   







    );
  }
}
