import 'package:flutter/material.dart';

class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  get helperText => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title:Text('Flutter Input',),
        backgroundColor: Colors.blue,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ4YUJhltohC9W7jLH6j2fhL06dT6p4xb_Qg&s'),
            Image.asset('assets/images.jpg'),
            SizedBox(height: 10,),
            //Padding(
              //padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),//only(left:10.0, right: 10.0),
              //child:
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.blue,),
                  suffixIcon: Icon(Icons.check, color:Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green)
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(20),

                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey
                  ),
                    helperText:'017*****',
                    helperStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.pink
                  )
                ),
              ),
            //),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green)
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey
                  ),
                  helperText:'At least 8 character.',
                  helperStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.pink
                  )
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
                width: double.infinity,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){
                      print(phoneController.text);
                      print(passwordController.text);
                      if(passwordController.text.length<6){
                      print('Password must be 8 character');
                      }
                      phoneController.clear();
                      passwordController.clear();
                    },

                    child: Text('Submit')))
          ],
        ),
      ),
    );
  }
}
