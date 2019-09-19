import 'package:flutter/material.dart';

class Shop_register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Shop_register();
  }
}
class _Shop_register extends State<Shop_register>{

  Future<bool> alertbar() async{
    return showDialog(context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.blue,
        title: Text('Text', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        content: new Column(
          children: <Widget>[
            TextField(

              decoration: InputDecoration(
                hintText: "Enter Your Shop Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Shop Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Shop Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Shop Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Shop Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Your Shop Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)
              ),
              onChanged: null,
            ),
            RaisedButton(onPressed: (){

            })
          ]
        ),
      );
    }
   );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Abi'),),
      body: new Container(
        child: RaisedButton(onPressed: (){
          alertbar();
        },
      )

      ),
    );
  }
}