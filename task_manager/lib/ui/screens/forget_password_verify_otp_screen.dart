import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/ui/screens/forget_password_verify_otp_screen.dart';
import 'package:task_manager/ui/screens/reset_password_screen.dart';
import 'package:task_manager/ui/widget/screen_background.dart';


class ForgetPasswordVerifyOtpScreen extends StatelessWidget {
  const ForgetPasswordVerifyOtpScreen({super.key});

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
                Text('PIN Verification',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20,),
                Text('A 6 digits OTP sent to your email address',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey),
                ),
                const SizedBox(height: 10,),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(7),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveColor: Colors.grey.shade300,
                    selectedColor: Colors.green,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  //backgroundColor: Colors.blue.shade50,
                  //enableActiveFill: true,

                  onCompleted: (v) {
                    print("Completed");
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
                const SizedBox(height: 20,),
                FilledButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
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


