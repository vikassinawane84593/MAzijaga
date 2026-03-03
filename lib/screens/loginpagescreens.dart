import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  final border=OutlineInputBorder(
    borderSide: BorderSide(width: 1)
  );

  final focusborder=OutlineInputBorder(
  borderSide: BorderSide(width: 2,color: Colors.green),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
        
        
            Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 60,right: 60,top: 60),
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/mazijagalogo.png')),
        
            SingleChildScrollView(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 250,),
              
                      Text('Find your perfect plot',style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black54,fontSize: 20,)),
              
                      SizedBox(height: 20,),
              
                      Form(
                          key: formkey,
                          child:Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
              
                                SizedBox(
                                  height:70,
                                  child: TextFormField(
                                    maxLength:10,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.call),
                                        prefixIconColor: Colors.black54,
                                        hintText: 'Enter a mob number',
                                        hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black54),
                                        enabledBorder: border,
                                      focusedBorder: focusborder,
              
                                    ),
                                  ),
                                ),
              
                                SizedBox(height: 10,),
              
                                SizedBox(
                                  height: 70,
                                  child: TextFormField(
                                    maxLength: 6,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                                    decoration: InputDecoration(
                                        prefixIconColor: Colors.black54,
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: 'Enter a Otp',
                                        hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black54),
                                        focusedBorder: focusborder,
                                      enabledBorder: border,
                                    ),
                                  ),
                                ),
              
                                SizedBox(height: 20,),
              
              
                                    SizedBox(
                                      height: 50,
                                        width:double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green.shade700,
                                            shape: RoundedRectangleBorder()
                                          ),
                                            onPressed: (){},
                                            child: Text('Login',style: TextStyle(color: Colors.black54),),)
                                    ),
              
              
              
                              ],
              
                            ),
                          )
                      )
              
                    ],
                  )),
            ),
        
        
          ],
        ),
      
    );
  }
}
