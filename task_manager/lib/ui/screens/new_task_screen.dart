import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/task_card.dart';
import 'package:task_manager/ui/screens/task_count_by_status.dart';

import '../widget/tm_app_bar.dart';
class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: TMAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                  itemBuilder: (context, index){
                  return TaskCountByStatus(title: 'New Task', count: index+5,);
                  }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 4,);
              },
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
                itemBuilder: (context, index){
                return TaskCart();
                },
                separatorBuilder: (context, index){
                return SizedBox(height: 4,);
                },


          )
          )
            ],
      ),
    );
  }
}






