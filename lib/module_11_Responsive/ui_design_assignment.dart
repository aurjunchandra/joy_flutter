import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class UiDesignAssignment extends StatelessWidget {
  const UiDesignAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('UI Design'),
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.,
        children: [
          Container(
            width: 400.w,
            height: 250.h ,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/3601426/pexels-photo-3601426.jpeg?cs=srgb&dl=pexels-asadphoto-3601426.jpg&fm=jpg'))
            ),
            child: Container(
              //alignment: Alignment.bottomLeft,
              //padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: LinearGradient(
                      begin:Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: [Colors.transparent, Colors.black12])
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 30,
            right: 20,
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Explore the World',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, fontSize: 30),),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green)
                    ),
                    hintText: 'Search Destination..',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),

          ),

        ],
        //SizedBox(height:20 ,),
      )

      );
    
  }
}
