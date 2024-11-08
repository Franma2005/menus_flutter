import 'package:flutter/material.dart';
import 'package:practica/app_routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Componentes de Flutter")),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(AppRoutes.MenuOptions[index].icon),
                  title: Text(AppRoutes.MenuOptions[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);

                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.MenuOptions.length));
  }
}
