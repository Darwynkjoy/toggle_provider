import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_provider/toggleprovider.dart';

class Toggleproviderexample extends StatefulWidget{
  @override
  State<Toggleproviderexample> createState()=>_ToggleState();
}

class _ToggleState extends State<Toggleproviderexample>{
  @override
  Widget build(BuildContext context){
    final click=Provider.of<Toggleprovider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Toggle example"),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("${click.ison?"ON":"OFF"}",style: TextStyle(fontSize: 30),)),
          Center(child: ElevatedButton(onPressed: click.ToggleSwitch, child: Text("${click.ison?"turn off":"turn on"}")))
        ],
      ),
    );
  }
}