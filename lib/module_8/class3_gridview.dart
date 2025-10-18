import 'package:flutter/material.dart';

class GridVw extends StatelessWidget {
  const GridVw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
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
                  Text('Phone', style: TextStyle(fontSize: 35, color: Colors.white),)
                ],
              )
            ),
          ],
        ),
      )
      //GridView.count(crossAxisCount: 2),
    );
  }
}
