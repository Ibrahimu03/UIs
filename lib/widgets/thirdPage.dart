import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
            children: [

              //bottom widget
              Positioned(
                  bottom: 1,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),

                    child: Column(
                      children:   [
                        const SizedBox(
                          height: 10,
                        ),
                        const Positioned(
                          top: 10,
                          left: 160,
                          child: Text("30 min", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),),
                        const SizedBox(
                          height: 10,
                        ),

                         Padding(
                           padding: const EdgeInsets.only( top: 10, left: 20, right: 20),

                          child: Row(
                            children: const [
                              Text("130", style: TextStyle(color: Colors.black),),

                              Spacer(),

                              Text("5.5Km", style: TextStyle(color: Colors.black),),

                              Spacer(),

                            Icon(Icons.star),
                              Text("3.2", style: TextStyle(color: Colors.black),),
                            ],
                          )
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          children:const  [
                            Icon(Icons.circle, color: Colors.green,),
                            SizedBox(width: 10,),
                            Text("KariaKoo Kamata"),
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: const [
                            Icon(Icons.circle, color: Colors.red,),
                            SizedBox(width: 10,),
                            Text("Mliman City"),
                          ],
                        ),


                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child:Row(
                          children: [
                            RaisedButton(
                              child: const Text("CANCEL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              color: Colors.black,
                            ),

                            const Spacer(),

                            RaisedButton(
                              child: const Text("ACCEPT RIDE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              color: Colors.orange,
                            ),
                          ],
                        ))



                        // Expanded(
                        //   child:ListView.builder(
                        //     itemCount: 3,
                        //     itemBuilder: (context, i)=> Column(
                        //       children: [
                        //         ListTile(
                        //           title: Row(
                        //             children: [
                        //               Text(bundle[i].Location, style: const TextStyle(color: Colors.grey),),
                        //               const Spacer(),
                        //               Text(bundle[i].time, style: const TextStyle(color: Colors.grey),),
                        //             ],
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           height: 1.0,
                        //         )
                        //       ],
                        //     ),
                        //   ),)

                      ],
                    ),
                  )
              )]
        )
    );
  }
}
