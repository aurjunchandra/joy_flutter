import 'package:flutter/material.dart';
class TaskCart extends StatelessWidget {
  const TaskCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color:Colors.white,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          title: Text('This is Text Title '),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Description of Text'),
              Text('Dated: 29/11/2025'),
              Row(
                children: [
                  Chip(
                    label: Text('New '),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit_note_rounded), color: Colors.green,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete), color: Colors.red,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}