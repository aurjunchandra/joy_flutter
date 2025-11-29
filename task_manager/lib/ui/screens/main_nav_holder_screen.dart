import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/new_task_screen.dart';
import 'package:task_manager/ui/screens/progress_task_screen.dart';
class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {

  int _selectedIndex = 0;
 List <Widget> _screens =[
   NewTaskScreen(),
   ProgressTaskScreen(),
   ProgressTaskScreen(),
   ProgressTaskScreen()

 ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index){
            _selectedIndex = index;
            setState(() {

            });

          },
          destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'New Task'),
        NavigationDestination(icon: Icon(Icons.done_all_outlined), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.close), label: 'Canceled'),
        NavigationDestination(icon: Icon(Icons.description_outlined), label: 'Progress'),

      ]),
    );
  }
}
