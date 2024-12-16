import 'dart:math';

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    var argsMap = args as Map<String, dynamic>;

    var v1 = argsMap['num'];
    var v2 = argsMap['text'];
    var v3 = argsMap['boolean'];
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation'),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.deepPurple,
    ),
    body: Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Text('P A G E 3\nNum: $v1\Text: $v2\nBoolean: $v3'),
          const SizedBox(height: 30,),
          BtnBack(context),
        ],
      ),
    ),
    );
  }

   Widget BtnBack(BuildContext ctx) => TextButton(
    onPressed: ()=>Navigator.pop(ctx, Random().nextInt(100)), 
    child: const Text('Back'));
}