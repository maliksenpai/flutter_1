import 'package:flutter/material.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/model/rehbermodule.dart';
import 'package:flutter_1/rehberekle.dart';

class rehber extends StatefulWidget{
  @override
  _rehber createState() => _rehber();
}

class _rehber extends State<rehber>{

  List<rehbermodule> liste;

  @override
  void initState() {
    liste=rehbermodule.liste;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
          title: Text("Rehber"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => {
          Navigator.push(context,MaterialPageRoute(builder: (context)=> rehberekle()))
        },child: Icon(Icons.add),),
         body:
         Container(
            child:
           ListView.builder(itemCount:liste.length , itemBuilder: (BuildContext context,int index){
             var kisi = liste[index].isim;
             return Dismissible(
               key: Key(liste[index].isim),
               onDismissed: (direction){
                 setState(() {
                   liste.removeAt(index);
                 });
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("$kisi silindi"),
                    action: SnackBarAction(
                      label: "Geri al",
                      onPressed: (){
                        setState(() {
                          liste.add(rehbermodule(isim: liste[index].isim,soyisim: liste[index].soyisim,numara: liste[index].numara));
                        });
                      },
                    ),
                  ));
                },
               child: Container(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Row(children: <Widget>[
                         Text(liste[index].isim),
                         Text(liste[index].soyisim)
                       ],
                       ),
                       Text(liste[index].numara)

                     ],
                   )
               ),
             );
    }),
    ),
    );
  }
}


