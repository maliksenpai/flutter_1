import 'package:flutter/material.dart';
import 'package:flutter_1/model/rehbermodule.dart';

class rehberekle extends StatelessWidget{
  List<rehbermodule> liste=rehbermodule.liste;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("selam"),
      ),
      body: yenikayit()
    );
  }

}

class yenikayit extends StatefulWidget {
  @override
  _yenikayitState createState() => _yenikayitState();
}

class _yenikayitState extends State<yenikayit> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    String rehberisim;
    String rehbersoyisim;
    String rehbernumara;
    return Form(
      key: _formkey,
      child:  Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                hintText: "Isim"
            ),
            validator: (value){
              if(value.isEmpty){
                return "Isimi bos birakma";
              }
            },
            onSaved: (value){rehberisim=value;},
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Soyisim"
            ),
            validator: (value){
              if(value.isEmpty){
                return "Soyisimi bos birakma";
              }
            },
            onSaved: (value){rehbersoyisim=value;},
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: "Numara"
            ),
            validator: (value){
              if(value.isEmpty){
                return "Numeracy bos birakma";
              }
            },
            onSaved: (value){rehbernumara=value;},
          ),
          RaisedButton(
            child: Text("Ekle"),
            onPressed: () {
              if(_formkey.currentState.validate()){
                _formkey.currentState.save();
                rehbermodule.liste.add(rehbermodule(isim: rehberisim,soyisim: rehbersoyisim,numara: rehbernumara));
                print(rehbermodule.liste.length);
                var snackbar = Scaffold.of(context).showSnackBar(SnackBar(content: Text("Yeni kayit eklendi"),));
                snackbar.closed.then((value) {
                  Navigator.pop(context);
                });
              }else{
                Navigator.pop(context);
              }
            },
          )
        ],
      )
    );
  }
}
