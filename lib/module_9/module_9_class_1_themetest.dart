import 'package:flutter/material.dart';
class TestTheme extends StatelessWidget {
  const TestTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Test',),
          backgroundColor: Colors.blue,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test Text',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20,),
            TextField(),
            SizedBox(height: 20,),
            TextField(),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Test Button'))
          ],
        ),
      ),
    );
  }
}
