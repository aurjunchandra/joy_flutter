import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResPkg extends StatelessWidget {
  const ResPkg({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation= MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive with Package'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: orientation==Orientation.landscape ? Axis.horizontal : Axis.vertical,
          child:orientation ==Orientation.landscape ?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //width 200.r= (width=200.w, height = 200.h )
                width: 200.r,
                height: 200.r,
                color: Colors.purpleAccent,
              ),
              Row(
                children: [
                  Container(
                    width: .5.sw,
                    height: 200.h,
                    color: Colors.teal,
                    child: Text('My actual widht ${0.5.sw}'
                        'My actual height ${200.h}'),
                  ),
                ],
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                ).hw,
                color: Colors.orange,
                child: Text('Hello BoxConstrains'),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text('Hello Test',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight:
                    FontWeight.bold,
                    color: Colors.blue),),
              Text('Hello Test Responsive',
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),)

            ],
          ):
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //width 200.r= (width=200.w, height = 200.h )
                width: 200.r,
                height: 200.r,
                color: Colors.purpleAccent,
              ),
              Row(
                children: [
                  Container(
                    width: .5.sw,
                    height: 200.h,
                    color: Colors.teal,
                    child: Text('My actual widht ${0.5.sw}'
                    'My actual height ${200.h}'),
                  ),
                ],
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                ).hw,
                color: Colors.orange,
                child: Text('Hello BoxConstrains'),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text('Hello Test',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:
                  FontWeight.bold,
                color: Colors.blue),),
              Text('Hello Test Responsive',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
              color: Colors.red),)
          
            ],
          ),
        ),
      ),
    );
  }
}
