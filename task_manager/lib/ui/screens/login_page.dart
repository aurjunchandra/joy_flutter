import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_email_verify.dart';
import 'package:task_manager/ui/screens/main_nav_holder_screen.dart';
import 'package:task_manager/ui/screens/sign_up_screen.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    void _onTabSignUp(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    }

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
              Text('Get Started With',
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
                    hintText: 'Password',
                  )
              ),
              SizedBox(height: 10,),

              FilledButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainNavHolderScreen()));

                  },
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                  size: 30,)),
              SizedBox(height: 40,),
              Center(
                child: Column(
                  children: [
                    TextButton(onPressed: _onTabForgetPassword, child: Text('Forget password? ')),
                    SizedBox(height: 10,),
                    RichText(text: TextSpan(
                        text:("Don't have an account?  "),
                        children: [
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = _onTabSignUp
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


