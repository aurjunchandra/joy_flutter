import 'package:flutter/material.dart';
import 'package:joy_flutter/module_8/dashboard.dart';

import '../home.dart';
import 'home_2.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey= GlobalKey<FormState>();
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images.jpg',
            width:150,
            height: 150,
          ),
          SizedBox(height: 20,),
          Text('Login with Phone and Password'),
          SizedBox(height: 20,),

          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text('Phone Number'),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(

                      )
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return'Please Enter Phone Number';
                      }  else if(value.length!=11){
                        return 'Please correct number';
                      }else{
                        return null;
                      }
                    },
                  ),

                  SizedBox(height: 20,),
                  Text('Password'),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return'Please Enter Password';
                      } else if (value.length<=6){
                        return 'Password must be 8 character';
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                              )
                          ),
                          onPressed: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => Home()));


                          //2Navigator.pushReplacement(context,
                              //MaterialPageRoute(
                                 // builder: (context) => Home()));

                          //ScaffoldMessenger.of(context).showSnackBar(
                           // SnackBar(content: Text('Login Successful'))
                         // );
                        }
                      }, child: Text('Submit', style: TextStyle(color: Colors.white),))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeTwo()));
                  }, child: Text('Home-2')),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context)=>HomeTwo()));
                      }, child: Text('Home-2')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(
                            builder: (context)=>Dashboard(phone: phoneController.text)));
                      }, child: Text('Dashboard'))
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
