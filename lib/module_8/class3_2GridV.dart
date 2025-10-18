import 'package:flutter/material.dart';

class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body:

      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20

          ),
          itemCount: 30,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: 150,
                  height: 150,

                  decoration: BoxDecoration(
                    //color: Colors.teal,
                      gradient: LinearGradient(colors: [
                        Colors.blue, Colors.red ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 10)
                        )
                      ]

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, size: 50, color: Colors.white,),
                      Text('Phone ${index}',
                        style: TextStyle(fontSize: 35,
                            color: Colors.white),)
                    ],
                  )
              ),
            );
          }

      // GridView.count(
      //     crossAxisCount: 3,
      //   padding: EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(30, (index)=>Padding(
      //     padding: const EdgeInsets.all(10.0),
      //
      //     child: Container(
      //         width: 150,
      //         height: 150,
      //
      //         decoration: BoxDecoration(
      //           //color: Colors.teal,
      //             gradient: LinearGradient(colors: [
      //               Colors.blue, Colors.red ],
      //                 begin: Alignment.topLeft,
      //                 end: Alignment.bottomRight
      //             ),
      //             borderRadius: BorderRadius.circular(10.0),
      //             boxShadow: [
      //               BoxShadow(
      //                   color: Colors.grey,
      //                   blurRadius: 10,
      //                   offset: Offset(0, 10)
      //               )
      //             ]
      //
      //         ),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Icon(Icons.phone, size: 50, color: Colors.white,),
      //             Text('Phone', style: TextStyle(fontSize: 25, color: Colors.white),)
      //           ],
      //         )
      //     ),
      //   ))
      //
      // ),
    ));
  }
}
