import 'package:flutter/material.dart';
import 'package:flutter_basit_gecis_tasarimi/sayfa_a.dart';
import 'package:flutter_basit_gecis_tasarimi/sayfa_x.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnaSayfa"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25, left: 25),
              child: Text("Sayfalar Arası Geçiş Uygulamasına Hoşgeldiniz ! ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(width: 200, height: 200, child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
              }, child: Text("A'ya Git"
              , style: TextStyle(fontSize: 50),))),
            ),
            SizedBox(width: 200, height: 200,child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()));
            }, child: Text("X'e Git",
            style: TextStyle(fontSize: 50),))),
          ],
        ),

      ),
    );
  }
}
