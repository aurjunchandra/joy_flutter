import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_email_verify.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

import 'forget_password_verify_otp_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();

}


class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    void _onTabForgetPassword(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordEmailVerify()));
    }
    return Scaffold(
      body: ScreenBackground(child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,),
              Text('Join With Us',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 30,),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Email',
                  )
              ),
              SizedBox(height: 10,),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'First Name',
                  )
              ),
              SizedBox(height: 10,),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Last Name',
                  )
              ),
              SizedBox(height: 10,),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Mobile No',
                  )
              ),
              SizedBox(height: 10,),
              TextFormField(
                  decoration:InputDecoration(
                    hintText: 'Password',
                  )
              ),
              SizedBox(height: 10,),

              FilledButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordVerifyOtpScreen()));

                  },
                  child: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 30,)),
              SizedBox(height: 40,),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text:("Have an account?  "),
                        children: [
                          TextSpan(
                              text: 'Sign In',
                              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)
                          )
                        ],
                        style: TextStyle(
                            color: Colors.black,  fontWeight: FontWeight.bold
                        )
                    )
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      )
      ),
    );
  }
}


