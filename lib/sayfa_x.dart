import 'package:flutter/material.dart';
import 'package:flutter_basit_gecis_tasarimi/sayfa_b.dart';
import 'package:flutter_basit_gecis_tasarimi/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SayfaX"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200, height:200,child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));
            }, child: Text("Y'ye Git",
              style: TextStyle(fontSize: 50),))),
          ],
        ),
      ),
    );
  }
}
