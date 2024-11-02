
import 'package:flutter/material.dart';
import 'package:productapi/productpage.dart';

class Detailpage extends StatelessWidget{
  final Product product;
  const Detailpage({required this.product});
  @override  
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title,
        style: TextStyle(color:const Color.fromRGBO(0, 0, 0, 1),fontWeight: FontWeight.bold),),
      backgroundColor: Colors.amber[50],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(width: 180),
             Image.network(product.thumbnail),   
                SizedBox(height: 5),
    
                Text("name:${product.id}",
                ),
                SizedBox(height: 5),
               Text(product.title),
               SizedBox(height: 5),
                   Text("Price:\$${product.price.toString()}"),
               SizedBox(height: 5),
               Text(product.thumbnail),
             
            ],
          ),
        ),
      ),
    );
  }
}