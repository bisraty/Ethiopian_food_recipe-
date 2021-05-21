

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ethiopian_food_rescipes/recipes_page.dart';

import 'list.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var colr=Color(0xff21bfbd);
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff21bfbd),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15 ,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                IconButton(icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){}),
                  Container(
                    width: 125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget> [
                        IconButton(icon: Icon(Icons.filter_list),
                            color: Colors.white,
                            onPressed: (){}),
                        IconButton(icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: (){})

                      ],
                    ),
                  ),

              ],
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children:<Widget> [
                Text("Ethiopian  ",
                  style:TextStyle(
                      fontFamily: 'Montserrat',
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25

                  ) ,),
                Text("Foods Recipes ",
                  style:TextStyle(
                      fontFamily: 'Montserrat',
                      color:Colors.white,

                      fontSize: 25

                  ) ,),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),
              ),

            ),
            child:ListView.builder(
              itemCount: ListOfWets().getListOfWets.length,

              itemBuilder:(context,index){
                return ListTile(
                    title: InkWell(
                      onTap: (){
                        setState(() {
                          indexv=index;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => recipes(
                            heroTag: ListOfWets().getListOfWets[index].image,
                            resp: ListOfWets().getListOfWets[index].recipe,
                          )));

                        });
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        ClipOval(
                        child: Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage( ListOfWets().getListOfWets[index].image ),
                        fit: BoxFit.cover,
                      )
                    ),
                  height: 120,
                  width: 120,
                ),
                ),

                            Text(
                              '${name[index]}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                            IconButton(icon:Icon(Icons.favorite, color: colr,),

                                onPressed:(){
                              setState(() {
                                colr=Colors.red;

                              });

                                })
                          ],
                        ),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
