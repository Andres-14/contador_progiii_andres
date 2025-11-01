import 'package:flutter/material.dart';
import 'package:contador_progiii_andres/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Peak - Menu Principal', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),

      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_,__) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(AppRoutes.menuOptions[index].icon),
            title: Text(AppRoutes.menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}