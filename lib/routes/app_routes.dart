import 'package:flutter/material.dart';
import 'package:contador_progiii_andres/models/menu_options.dart';
import 'package:contador_progiii_andres/screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/counter';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/counter', icon: Icons.add, name: 'Pantalla Principal: Contador', screen: const CounterScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/counter': (BuildContext context) => const CounterScreen(),
  };
}