import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
                Text("Add data",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }
}
