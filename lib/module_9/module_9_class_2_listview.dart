import 'package:flutter/material.dart';
class ListV extends StatelessWidget {
  const ListV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder:(context,index){
            return Card(
              child: ListTile(
                title: Text('Aurjun'),
                subtitle: Text('01818944895'),
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete, color:Colors.red,),
              ),
            );
          } ),
    );
  }
}
