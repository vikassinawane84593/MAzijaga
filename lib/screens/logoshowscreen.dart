import 'package:flutter/material.dart';
import 'package:mazi_jaga/screens/welcomepagescreen.dart';

class Logoshow extends StatefulWidget {
  const Logoshow({super.key});

  @override
  State<Logoshow> createState() => _LogoshowState();
}


class _LogoshowState extends State<Logoshow> {
  Future<void>delay() async{
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (a) =>Welcomepage()));
}

@override
  void initState() {
    super.initState();
    delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            color: Theme.of(context).colorScheme.secondary,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(child: Image.asset('assets/images/mazijagalogo.png'))

        ]
      ),
    );
  }
}
