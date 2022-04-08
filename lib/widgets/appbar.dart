import 'package:flutter/material.dart';

Widget appbar(){
  return Container(
    color: Colors.orange,

    width: double.infinity,

      child: Row(
        children: [
           const Icon(Icons.menu),

           Container(
             height: 40,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               color: Colors.white
             ),
             child: Row(
               children: [
                const Icon(Icons.search),
                TextField(
                   decoration: InputDecoration(
                     hintText: 'Search your trip location',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(3),
                     )
                   ),
                 ),

                const Icon(Icons.mic_rounded),
               ],
             ),
           )
         ],
       ),


  );
}