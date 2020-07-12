import 'package:flutter/material.dart';

class anasayfa extends StatefulWidget{
  anasayfa({Key key}) : super(key:key);
  @override
  _anasayfa createState() => _anasayfa();
}

class _anasayfa extends State<anasayfa>{

  var sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selam"),
      ),

      body: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             child: IconButton(
               color: Colors.red,
               icon: Icon(Icons.star),
               onPressed: () => calistir(),
             ),
           ),
          Container(
            child: Text(sayac.toString()),
          )
         ],
       ),
      )
    );

  }
  void calistir(){
    setState(() {
      sayac++;
    });
  }
}