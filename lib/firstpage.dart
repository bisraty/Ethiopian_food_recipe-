

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ethiopian_food_rescipes/HomePage.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.push(
        context, MaterialPageRoute(builder: (context) => Homepage())));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color(0xff21bfbd)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 120,
                          backgroundImage: AssetImage('images/image2.jpg'),

                        ),
                        Padding(padding: EdgeInsetsDirectional.only(top: 10),
                        ),
                        Text('Ethiopian Foods Recipes ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        backgroundColor: Colors.black,
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(top: 20),
                      ),
                      Text( 'Doro ,shero etc ,you can get them all',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
