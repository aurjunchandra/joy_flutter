import 'package:flutter/material.dart';
class Res extends StatelessWidget {

  const Res({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    bool isTablet=screenSize.width>600;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Responsive Design'),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I am ${isTablet?'Tablet':'Mobile'}',
                style:TextStyle(fontSize: 30, color: Colors.orange),),
              isTablet? Row(
          children: [
          Icon(Icons.phone, size: 50,),
          SizedBox(height: 20,),
          Icon(Icons.person, size: 50,),
          SizedBox(height: 20,),
          Icon(Icons.home, size: 50,),
          SizedBox(height: 20,),
          Icon(Icons.account_balance, size: 50,),
          SizedBox(height: 20,),
          ],
        ): Column(
                children: [
                  Icon(Icons.phone, size: 50,),
                  SizedBox(width: 20,),
                  Icon(Icons.person, size: 50,),
                  SizedBox(width: 20,),
                  Icon(Icons.home, size: 50,),
                  SizedBox(width: 20,),
                  Icon(Icons.account_balance, size: 50,),
                  SizedBox(width: 20,),
                ],
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                width: screenSize.width*.5,
                height: screenSize.height*.2,
                color: Colors.blue,
              ),
              SizedBox(height: 20,),
              Text(screenSize.width.toString(),
                style: TextStyle(
                    fontSize: .045*screenSize.width ),),
              SizedBox(height: 20,),
              Text('Hello Aurjun',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30),),
              SizedBox(height: 20,),
              Text('Hello Aurjun',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize:.045*screenSize.width ),)
            ],
          ),
        ),
      ),
    );
  }
}
