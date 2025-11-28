import 'package:flutter/material.dart';
class ResListBuilder extends StatelessWidget {
  const ResListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Responsive List Builder'),
      ),
      body: Column(
        children: [
          Text('Text One',
            style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold),
          ),
          Text('Text Two',
            style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold),
          ),
          Text('Text Three',
            style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold),
          ),
          SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(index.toString()),
                  );
                }
            ),
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.brown,
          ),
          Flexible(
            flex: 1,
            child: Container(

              color: Colors.teal,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(

              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}

