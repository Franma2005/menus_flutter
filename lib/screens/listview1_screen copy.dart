import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final options = const["TARGARUEB", "STARK", "LANNISTER", "BARATHEON"]
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LISTVIEW TIPO 1"),
      ),
      body: ListView(
        children: [
          ...options.map((item) => ListTile(
            trailing: const Icon( Icons.arrow_forward_ios_outlined),
            title: Text(item),
          )),
          /*ListTile(
            leading: Icon( Icons.abc_rounded),
            title: Text("HOLA MUNDO"),
          ),
          Text("HOLA MUNDO"),
          Text("HOLA MUNDO"),
          Text("HOLA MUNDO")
        */],
      ));
  }
}