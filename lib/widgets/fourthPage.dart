import 'package:flutter/material.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({Key? key}) : super(key: key);

  @override
  _fourthPageState createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: IconButton( icon: const Icon(Icons.menu,), onPressed: () {  }, ),
          // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.mic),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search your trip location',
                    border: InputBorder.none),
              ),
            ),
          ),

          actions: [
            IconButton(icon: const Icon(Icons.my_location), onPressed: (){}, )
          ],),

        body: Stack(
            children: [
              //bottom widget
              Positioned(
                  bottom: 1,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:   [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Requesting Ride", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: EdgeInsets.all(12.0),
                          child: LinearProgressIndicator(),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        RaisedButton(
                          child: const Text("CANCEL REQUEST", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          onPressed: (){},
                          color: Colors.black,
                        ),

                      ],
                    ),
                  )
              )]
        )
    );
  }
}
