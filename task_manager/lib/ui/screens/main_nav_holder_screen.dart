import 'package:flutter/material.dart';
class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {

  int _selectedIndex = 0;
 // List <widget> screens = ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          //selectedIndex: ,
          onDestinationSelected: (int index){

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
