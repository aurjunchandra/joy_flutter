import 'package:flutter/material.dart';

class Buttongrp extends StatelessWidget {
  const Buttongrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Group') ,
      ),


      body: Center(
        child: Column(
          children: [
           ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: (){},
                child: Text('About')
           ),

            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  onPressed: (){},
                  child: Text('Submit')
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 300, //double.infinity,
              height: 30,
              child: OutlinedButton(
                  onPressed: (){},
                  child: Text('Outline')),
            ),
            TextButton(
                onPressed: (){
              print('Read more..');
            },
                child:Text('Read More') ),
            SizedBox(height: 10,),
            Icon(Icons.phone_android, color:Colors.deepOrange, size: 60,),
            SizedBox(height: 10,),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.delete),
              color:Colors.pink,
              iconSize:60,),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                print('Single Tap');
              },
              onDoubleTap: (){
                print('Double Click');
              },
              onLongPress: (){
                print('Long Press');
              },
              child: Text('This is test text.')),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                print('Single Tap');
              },
              onDoubleTap: (){
                print('Double Click');
              },
              onLongPress: (){
                print('Long Press');
              },
              child: Text('Test-2',
              style: TextStyle(
                  fontSize:60),
              ),
            )
          ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,

        onPressed: (){
          print('click to add');
        },
      child:  Icon(Icons.add),           //Text('+'),
      ),
    );
  }
}
