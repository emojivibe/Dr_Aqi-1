import 'package:flutter/material.dart';

import 'cart.dart';

class Cart2 extends StatefulWidget {
  const Cart2({Key? key}) : super(key: key);

  @override
  State<Cart2> createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:  IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,  MaterialPageRoute(
                    builder: (context) =>
                        Cart())
                );
              },
              icon: Icon(Icons.add_card_outlined, color: Colors.black))
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: GestureDetector(
                child: Image.asset(
              "assets/Airpurifier.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.fill,
            )),
          ),
          GestureDetector(
              child: Image.asset(
            "assets/price.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/3,
            fit: BoxFit.fill,
          )),
          Container(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              splashColor: Colors.green,
              focusColor: Colors.blue,
              color: Colors.black,
              onPressed: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).devicePixelRatio * 90,
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
