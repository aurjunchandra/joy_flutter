import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,

      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Row Data',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                color:Colors.blue,
              ),
              ),
              Text('Row Data',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color:Colors.blue,
                ),
              ),
              Text('Row Data',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color:Colors.blue,
                ),
              ),
              Text('Row Data',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color:Colors.blue,
                ),
              ),
              Text('Row Data',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color:Colors.blue,
                ),
              ),
              Text('Row Data',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color:Colors.blue,
                ),
              ),
            ],
          ),
          ),

          Text("Page One",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Two",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
          Text("Page Three",
            style: TextStyle(
              fontSize: 50,
              color:Colors.black,
              fontWeight: FontWeight.w200,
              wordSpacing: 10,

            ),
          ) ,
        ],
      )
      ),
    );
  }
}
