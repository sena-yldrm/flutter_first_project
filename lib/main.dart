import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      "https://cdn.shopify.com/s/files/1/0416/8083/0620/files/01132022_soc_pinterestboardcoverupdate_KU_1200x1200_1_1024x1024.png?v=1664470975";
  /* Row dart_row() {
    /* @override içinde 
          *body: Container(
          *child: Column(
           * crossAxisAlignment: CrossAxisAlignment.start,
          *  children: [dart_row(), Expanded(child: dersleri_column())],
         * ),
        ),
        böyle kullanılıyor */
    return Row(
      //Karakterlerin arasını açmak için kullanılır
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 75,
          width: 75,
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "D",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text(
            "A",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          alignment: Alignment.center,
          color: Colors.orange.shade400,
          child: Text(
            "R",
            style: TextStyle(fontSize: 48),
          ),
        ),
        Container(
          height: 75,
          width: 75,
          alignment: Alignment.center,
          color: Colors.orange.shade500,
          child: Text(
            "T",
            style: TextStyle(fontSize: 48),
          ),
        ),
      ],
    );
  } */
  /* Column dersleri_column() {
    return Column(
      //expanded kullandığın için
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //bir işe yaramıyor çünkü expanded her yere yayılır

      children: [
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            color: Colors.orange.shade300,
            child: Text(
              "E",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "R",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            width: 75,
            margin: EdgeInsets.only(top: 15),
            alignment: Alignment.center,
            color: Colors.orange.shade500,
            child: Text(
              "S",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            margin: EdgeInsets.only(top: 15),
            width: 75,
            alignment: Alignment.center,
            color: Colors.orange.shade600,
            child: Text(
              "L",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            height: 75,
            width: 75,
            alignment: Alignment.center,
            color: Colors.orange.shade700,
            child: Text(
              "E",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            margin: EdgeInsets.only(top: 15),
            width: 75,
            alignment: Alignment.center,
            color: Colors.orange.shade800,
            child: Text(
              "R",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 75,
            margin: EdgeInsets.only(top: 15),
            width: 75,
            alignment: Alignment.center,
            color: Colors.orange.shade900,
            child: Text(
              "İ",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
      ],
    );
  } */
  /******************************************************* */

  Container containerOlustur(String harf, Color renk) {
    return Container(
      height: 75,
      width: 75,
      margin: EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dart_row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade100),
        containerOlustur('A', Colors.orange.shade200),
        containerOlustur('R', Colors.orange.shade300),
        containerOlustur('T', Colors.orange.shade400),
      ],
    );
  }

  Column dersleri_column() {
    return Column(
      //expanded kullandığın için
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //bir işe yaramıyor çünkü expanded her yere yayılır

      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade200),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade300),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade400),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade500),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade600),
          
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade700),
        ),
        Expanded(
          child: containerOlustur('İ', Colors.orange.shade800),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Başlık"),
          backgroundColor: Colors.purple,
        ),
        body: kuromicontainer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("tıklandı");
          },
          child: Icon(Icons.accessibility_new),
          backgroundColor: Colors.deepPurpleAccent,
        ),
      ),
    );
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          //genişliklerin hiçbir anlamı kalmadı silebilirsin
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        //flexin varsayılan değeri 1 dir
        //2 k ya 1 k olarak ayırır
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
    ];
  }

  //flexible istenilen değer kadar verip kendini küçültüyor
  //expanded her yere yayılıyor
  List<Widget> get flexibleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      )
    ];
  }

  Container row_column() {
    return Container(
        color: Colors.orangeAccent,
        //elemanlar y ekseninde
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          /* elemanlar x ekseninde
            *child: Row(
            /içeriğin kadar yer tut x ekseninde elemanlarla oynar
            /mainAxisSize: MainAxisSize.min,
            *mainAxisSize: MainAxisSize.max,
            /içindeki elemanları ortalıyor
            *mainAxisAlignment: MainAxisAlignment.center,
            /y ekseninde elemanları kaydırır
            *crossAxisAlignment: CrossAxisAlignment.center, */
          children: [
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.greenAccent,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.black,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.blueAccent,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.pinkAccent,
            ),
          ],
        ));
  }

  Widget kuromicontainer() {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(20),
        child: Text(
          "SENA",
        ),
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            //borderRadius: BorderRadius.circular(40)),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(50),
            ),
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(15, 0),
                  blurRadius: 10),
              BoxShadow(
                color: Colors.deepPurple,
                offset: Offset(0, 20),
                blurRadius: 10,
              )
            ]),
      ),
    );
  }
}
//92-93-94.dersler
/* body: Container(
          alignment: Alignment.center,
          width: 200,
          height: 300,
          color: Colors.purple,
          /* child: Text(
            "sena" *4, 
          textAlign:   TextAlign.center,
          ), */
          //margin: EdgeInsets.all(16),
          //margin: EdgeInsets.only(left: 8,top: 8),
          margin: EdgeInsets.symmetric(vertical: 80,horizontal: 80),
          //text ile container arası uzaklık
          padding: EdgeInsets.all(20),
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        ), */
        /* body: Container(
          color: Colors.pink,
          child: Center(
            widthFactor: 2,
            heightFactor: 2,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(40),
                height: 50,
                width: 50,
                child: Text("sena"),
              ),
            ),
          ),
        ),
   */