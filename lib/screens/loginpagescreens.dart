import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formkey = GlobalKey<FormState>();
  final mobkey = GlobalKey<FormFieldState>();

  final TextEditingController otpco = TextEditingController();
  final TextEditingController mobco = TextEditingController();

  bool showOtp = false;

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(width: 1, color: Colors.black26),
  );

  final focusborder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(width: 2, color: Colors.green),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [



              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 50),
                child: Image.asset(

                        'assets/images/mazijagalogo.png',),
              ),

              Text(
                "Find your perfect plot",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black45,fontSize: 20),
              ),

              const SizedBox(height: 40),


              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withAlpha(180),
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),

                  child: Form(
                    key: formkey,

                    child: Column(
                      children: [

                        /// MOBILE
                        TextFormField(
                          key: mobkey,
                          controller: mobco,
                          maxLength: 10,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),

                          validator: (value) {

                            if (value == null || value.isEmpty) {
                              return "Mobile number required";
                            }

                            RegExp regex = RegExp(r'^[6-9]\d{9}$');

                            if (!regex.hasMatch(value)) {
                              return "Enter valid mobile number";
                            }

                            if (value.length!=10) {
                              return "Enter 10 digit  mobile number";
                            }

                            return null;
                          },

                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            hintText: "Enter mobile number",

                            counterText: "",

                            enabledBorder: border,
                            focusedBorder: focusborder,
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// OTP

                        if (showOtp)
                          TextFormField(
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                            controller: otpco,
                            maxLength: 6,
                            keyboardType: TextInputType.number,

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "OTP required";
                              }

                              if (value.length != 6) {
                                return "Enter valid OTP";
                              }

                              return null;
                            },

                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              hintText: "Enter OTP",
                              counterText: "",

                              enabledBorder: border,
                              focusedBorder: focusborder,
                            ),
                          ),



                        const SizedBox(height: 30),

                        /// BUTTON
                        SizedBox(
                          width: double.infinity,
                          height: 50,

                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green.shade700,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 3,
                            ),

                            onPressed: () {

                              if (!showOtp) {

                                if (mobkey.currentState!.validate()) {

                                  setState(() {
                                    showOtp = true;
                                  });

                                }

                              } else {

                                if (formkey.currentState!.validate()) {

                                  print("Login Success");

                                }

                              }

                            },

                            child: Text(
                              showOtp ? "Login" : "Send OTP",
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}