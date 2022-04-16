import 'package:flutter/material.dart';
class dashBoard extends StatefulWidget {
  const dashBoard({ Key? key }) : super(key: key);

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: IconButton(onPressed: (){} ,icon:Icon(Icons.arrow_back_ios_new,color: Colors.black)),onPressed: (){},),
        title: Text("HISTORICAL TRENDS",style: TextStyle(color: Colors.black),),
      ),

      body: Container(

        child:  Center(
          child: Padding(padding: EdgeInsets.all(9.0),
            child:  Column(
              children: [
                SizedBox(height : 22.0),
                GestureDetector(
                    child: Image.asset(
                      "assets/dashboard1.png",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.35,
                      fit: BoxFit.fill,
                    )),
                SizedBox(height : 42.0),
                GestureDetector(
                    child: Image.asset(
                      "assets/dashboard2.png",
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.35,
                      fit: BoxFit.fill,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}