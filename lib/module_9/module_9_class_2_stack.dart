import 'package:flutter/material.dart';
class StackV extends StatelessWidget {
  const StackV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ),
                Positioned(
                  left: 10,
                  top: 20,
                  child: Container(
                    color: Colors.blue,
                    width: 180,
                    height: 150,
                  ),
                ),
                Positioned(
                  left:30,
                  top: 40,
                  child: Container(
                    color: Colors.purple,
                    width: 120,
                    height: 100,
                  ),
                )

              ],
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage('https://marketplace.canva.com/8-1Kc/MAGoQJ8-1Kc/1/tl/canva-ginger-cat-with-paws-raised-in-air-MAGoQJ8-1Kc.jpg'),
                ),
                Positioned(
                  bottom: 20,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1,)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
