// import 'package:flutter/material.dart';
// import 'package:jabir/widgets/appbar.dart';
// import 'downContainer.dart';
//
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   _homepageState createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.orange,
//         leading: IconButton( icon: const Icon(Icons.menu),
//                     onPressed: () {  },),
//
//         title: Container(
//           height: 30,
//           width: 300,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: const Center(
//
//             child: TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.search, color: Colors.grey,),
//               suffix: Icon(Icons.mic_rounded),
//               hintText: 'Search your trip location',
//               hintStyle: TextStyle(color: Colors.grey),
//               border: InputBorder.none
//             ),
//           ),)
//         ),
//
//
//         actions: [
//           IconButton(icon: const Icon(Icons.my_location),
//             onPressed:() {  },),
//         ],
//       ),
//       body: Column(
//         children: [
//           appbar()
//         ],
//       ),
//     );
//   }
// }

 import 'package:flutter/material.dart';

import '../model.dart';
import 'downContainer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

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
          myLocation(),

      //bottom widget
       Positioned(
           bottom: 1,
           right: 0,
           left: 0,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                const SizedBox(
                  height: 10,
                ),
                const Text("    Select Location", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 40,
                  width: 350,
                  child:const TextField(
                    decoration: InputDecoration(
                      hintText: 'Where From',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Container(
                  height: 40,
                  width: 350,
                  child:const TextField(
                    decoration: InputDecoration(
                      hintText: 'Where to',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 7,
                ),

                const Text("   Recent Ride", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

                Expanded(
                  child:ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, i)=> Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            Text(bundle[i].Location, style: const TextStyle(color: Colors.grey),),
                            const Spacer(),
                            Text(bundle[i].time, style: const TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 1.0,
                      )
                    ],
                  ),
                ),)

              ],
            ),
          )
      )]
      )
    );

  }

  Widget myLocation() {

    return Positioned(
     right: 1,
     top: 210,
        child:IconButton(icon: const Icon(Icons.my_location, color: Colors.blue, size: 40,), onPressed: () {}));
  }
}