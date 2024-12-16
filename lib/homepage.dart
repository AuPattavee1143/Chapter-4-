import 'package:asyn_await_app/page2.dart';
import 'package:asyn_await_app/page3.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation'),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
    foregroundColor: Colors.deepPurple,
    ),
    body:  Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Text('Homepage'),
          const SizedBox(height: 30,),
          btnPage2(context),
          btnPage3(context),
        ],
      ),
    ),
    );
  }

  Widget btnPage2(BuildContext ctx) => TextButton(
    onPressed: () async{
      var value = await Navigator.pushNamed(
        ctx, '/page2', arguments: 456);
        myAlert(ctx, 'ค่าที่ส่งกลับมาคือ $value');
    }, 
    child: const Text('Go to page 2'));

    Widget btnPage3(BuildContext ctx) => TextButton(
    onPressed: () async{
      var values = await Navigator.pushNamed(
        ctx, '/page3', arguments: {'num':555, 'text':'hahaha', 'boolean':false});
        myAlert(ctx, 'ค่าที่ส่งกลับมาคือ $values');
    }, 
    child: const Text('Go to page 3'));

    void myAlert(BuildContext ctx ,String msg){
    showDialog(
      context: ctx, 
      builder: (ctx) => AlertDialog(
        actions: [
          TextButton(
            onPressed: ()=>Navigator.of(ctx).pop(), 
            child: const Text('OK'))
        ],
        content: Text(msg),
      ));
  }
}