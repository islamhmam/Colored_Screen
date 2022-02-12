import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'color_view.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Color?> _listItem = [
        Colors.white,
        Colors.grey,
        Colors.black,
        Colors.red[100],
        Colors.red,
        Colors.red[900],
        Colors.orange[100],
        Colors.orange,
        Colors.orange[900],
    Colors.green[100],
    Colors.green,
    Colors.green[900],
        HexColor("#ff4a4a"),
        HexColor("#ff0000"),
        HexColor("#a30000"),
    Colors.blue[100],
    Colors.blue,
    Colors.blue[900],
        Colors.lightGreenAccent,
        HexColor("03fc4e"),
        HexColor("#1e4700"),

        Colors.purple[100],
        Colors.purple,
        Colors.purple[900],
        Colors.teal[100],
        Colors.teal,
        Colors.teal[900],
        Colors.yellow[100],
        Colors.yellow,
        Colors.yellow[900],

        Colors.pink[100],
        Colors.pink,
        Colors.pink[900],
        Colors.lime[100],
        Colors.lime,
        Colors.lime[900],
        Colors.cyan[100],
        Colors.cyan,
        Colors.cyan[900],
        Colors.brown[100],
        Colors.brown,
        Colors.brown[900],
        Colors.amber[100],
        Colors.amber,
        Colors.amber[900],
        Colors.indigo[100],
        Colors.indigo,
        Colors.indigo[900],






  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2),
                    ]
                )
            ),
            child: Center(child: Text("Choose any Color", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
          ),
        ),

      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left : 20.0, right: 20,top: 5,bottom: 5),
          child: Column(
            children: <Widget>[


              Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 1    ,
                    children: _listItem.map((item) => InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context)=> ColorView(item!),),
                        );
                      },
                      child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: item,
                              borderRadius: BorderRadius.circular(20),


                          ),

                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}