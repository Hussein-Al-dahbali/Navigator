import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/ProductList_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title:Text("DetailScreen",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)

      ),  body:  Center(child: Column(
        children: [
          SizedBox(height: 100,),

          MaterialButton(onPressed: (){
           Navigator.pop(context);
              },child: Text("pop"),color: Colors.blueAccent,),
          MaterialButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductlistScreen(),));

          },child: Text("Next Exsersise",),color: Colors.greenAccent,)
        ],
      )),) ;


  }
}
