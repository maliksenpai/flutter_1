class rehbermodule{
  String isim;
  String soyisim;
  String numara;

 static  List<rehbermodule> liste = [
    rehbermodule(isim:"enes",soyisim:"malik",numara:"123123"),
    rehbermodule(isim:"tuncay",soyisim: "cay",numara: "213123")
  ];

  rehbermodule({this.isim,this.soyisim,this.numara});

}