import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  final String phone;
  final String ? password;
  const Dashboard({super.key, required this.phone, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(phone, style: TextStyle(
              color: Colors.red,
              fontSize: 35, ),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),

      ),
    );
  }
}

