


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list.dart';
class recipes extends StatefulWidget {
  recipes({this.heroTag,required this.resp});
final heroTag;
final List resp;
  @override
  _recipesState createState() => _recipesState();
}

class _recipesState extends State<recipes> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Color(0xff7a9bee),
      appBar: AppBar(
        backgroundColor:Color(0xff7a9bee) ,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 15 ,left: 90),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [

              Text("Recipes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              IconButton(icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: (){}),

            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.9,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
          ),
          Positioned(
            top:75,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight:Radius.circular(45)),
                  color: Colors.white,
                ),
                height:MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
              )
    ),
          Positioned(
            top: 30,
              left:MediaQuery.of(context).size.width*.24,
              child: Hero(
            tag:widget.heroTag,
            child: ClipOval(

              child: Container(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage( '${images[indexv]}' ),
                    fit: BoxFit.cover,
                  )
                ),
                height: 200,
                width: 200,
              ),
            ),
          )),

          Positioned(
            top:250,

              child: Container(
                height: 400,
                width: 410,
            child: ListView.builder(
                itemCount: widget.resp.length,
                itemBuilder: (context ,index){
                  return ListTile(
                    title:Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text('${widget.resp[index]}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ) ,
                  );

                }),
          ))


        ],
      ),

    );
  }
}

