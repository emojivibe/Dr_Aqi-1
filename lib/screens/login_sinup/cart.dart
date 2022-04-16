import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading : Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("POPULAR PRODUCTS",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black))
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
              child: Image.asset(
                "assets/cart4.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/13,
                fit: BoxFit.fill,
              )),


         GestureDetector(
                child: Image.asset(
                  "assets/cart2.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.33,
                  fit: BoxFit.fill,
                )),

        ],
      ),
    );
  }
}