import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_verify_otp_screen.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class ForgetPasswordEmailVerify extends StatelessWidget {
  const ForgetPasswordEmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 150,),
                Text('Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20,),
                Text('A 6 digits OTP will be sent to your email address',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                const SizedBox(height: 20,),
                FilledButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordVerifyOtpScreen()));
                    },
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 30,)),
                const SizedBox(height: 20,),
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
          )),
    );
  }
}
