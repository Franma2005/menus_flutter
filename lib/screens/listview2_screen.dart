import 'package:flutter/material.dart';
import 'package:practica/app_routes/routes.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LISTVIEW TIPO 2"),
      ),
      body: ListView.separated(
      itemBuilder: (context, index) => ListTile(
            trailing: Icon(AppRoutes.MenuListOptions[index].icon),
            title: Text(AppRoutes.MenuListOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.MenuListOptions[index].route);
            }
      ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 4,
      ));
  }
}