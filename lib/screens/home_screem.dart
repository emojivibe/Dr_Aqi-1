import 'package:draqi/screens/login_sinup/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bottomNavBar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Setindex(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight:  MediaQuery.of(context).size.height/9,
        automaticallyImplyLeading: true,
        elevation:  0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.add,color:Colors.black)),
        title: Column(

          children: [SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("Jahangirpuri, New Delhi",style: TextStyle(color: Colors.black),),
            ),
        SizedBox(height: 6,),
            Image.asset('assets/Home2.png')
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: Colors.black)),
          IconButton(onPressed:(){
            Navigator.push(context,  MaterialPageRoute(
                builder: (context) =>
                 Setting())
            );}
            , icon: Icon(Icons.settings,color: Colors.black))
        ],
      ),

      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //decoration: BoxDecoration(color: Colors.white70),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Image.asset('assets/Home.png',fit: BoxFit.fill,),
        ),

      ),
    );
  }
}
