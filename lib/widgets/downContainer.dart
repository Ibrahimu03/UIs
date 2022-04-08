import 'package:flutter/material.dart';

Widget downContainer(){
  return Positioned(
    bottom: 1,
       child: Container(
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Colors.white
         ),

          child: Column(
          children:  const [
            Text("Select Locatiom", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
              decoration: InputDecoration(
                hintText: 'Where From',
                border: OutlineInputBorder(),
              ),
            )),

            SizedBox(
              height: 1,
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Where to',
                    border: OutlineInputBorder(),
                  ),
                )),

            Text("Recent Rides"),

          ],
        ),
       ) );
    }

