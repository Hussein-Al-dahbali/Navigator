import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/prodact.dart';

class ProdactdetailsScreen extends StatefulWidget {
  Prodact prodacts;
  ProdactdetailsScreen(this.prodacts);

  @override
  State<ProdactdetailsScreen> createState() => _ProdactdetailsScreenState();
}

class _ProdactdetailsScreenState extends State<ProdactdetailsScreen> {
  int count = 1;
  late int total = widget.prodacts.price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          "Prodactdetails",
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsetsDirectional.all(10),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.greenAccent,
            border: BoxBorder.fromBorderSide(
              BorderSide(color: Colors.green, width: 1),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Text("${widget.prodacts.name} : "),
                  Text("\$${total}"),
                  Text("       Number for itms :  ${count}"),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (count < 10) {
                          count++;
                          total = total + widget.prodacts.price;
                        }
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              MaterialButton(onPressed: (){
                Navigator.pop(context,total);
              },child: Text("Select"),color: Colors.green,)
            ],
          ),
        ),
      ),
    );
  }
}
