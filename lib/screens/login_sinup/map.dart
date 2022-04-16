import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class polltMap extends StatelessWidget {
  const polltMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar:false ,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.red,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        centerTitle: true,
        elevation: 0,

        backgroundColor: Colors.white10,
        leading: IconButton(icon: IconButton(onPressed: (){} ,icon:Icon(Icons.arrow_back_ios_new,color: Colors.black)),onPressed: (){},),
        title: Text("MAP",style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset(
              "assets/MapSearch.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/14,
              fit: BoxFit.fill,

            ),
             SizedBox(height: 25,),
             GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Image.asset(
                          "assets/Map.png",
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/1.38,
                          fit: BoxFit.fill,

                      ),
                    )),

          ],
        ),
      ),
    );
  }
}
