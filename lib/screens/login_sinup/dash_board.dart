import 'package:flutter/material.dart';
class dashBoard extends StatefulWidget {
  const dashBoard({ Key? key }) : super(key: key);

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      width:double.infinity,
      color: Colors.blue,
      child: Center(child: Text("Dash_Board")),
      
    );
  }
}