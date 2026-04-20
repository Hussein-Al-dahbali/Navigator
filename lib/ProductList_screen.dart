import 'package:flutter/material.dart';
import 'package:navigator/prodact.dart';
import 'package:navigator/prodactDetails_screen.dart';

class ProductlistScreen extends StatelessWidget {
  List<Prodact> prodacts=List.generate(50, (index)=> Prodact("Prodact ${index+1}", (index+1)*100 ));



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prodact",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.blue,),
      body: ListView.builder(
          itemCount: prodacts.length,

          itemBuilder:( context,i)=>ListTile(
            title: Text(prodacts[i].name),
            trailing: Text("\$${prodacts[i].price}"),
            shape: BoxBorder.fromBorderSide(BorderSide(color: Colors.black))
              ,onTap: () async {
            final total= await  Navigator.push(context, MaterialPageRoute(builder:(_) => ProdactdetailsScreen(prodacts[i]),));


            if(total!=null){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(total.toString()),duration: const Duration(seconds: 5),),);

            }

          },


          ),)
    );
  }
}
