
import 'package:flutter/material.dart';
import 'package:mazi_jaga/screens/loginpagescreens.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [

          SizedBox.expand(
            child: Image.asset(
              "assets/images/welcomepagebackgroundimage.png",
              fit: BoxFit.cover,
            ),
          ),



          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black26.withAlpha(200),
                  Colors.black.withAlpha(50),
                  Colors.black.withAlpha(200),
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 70,right:70,top: 70, ),
                  child: Center(

                      child: Image.asset('assets/images/mazijagalogo.png',)
                  ),
                ),



                Text(
                  "माझी जागा. माझं भविष्य.",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: const Color(0xFFF4B400),
                    fontWeight: FontWeight.bold,

                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  "विश्वासार्ह प्लॉट आणि घरांसाठी तुमचा भरोसेमंद साथी.",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white70
                  ),
                ),

                SizedBox(height: 50,),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4B400),
                      foregroundColor: Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (a) =>LoginPage()));
                    },
                    child:  Text(
                      "आताच सुरुवात करा",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}