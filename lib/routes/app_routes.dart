import 'package:flutter/material.dart';
import 'package:contador_progiii_andres/models/menu_options.dart';
import 'package:contador_progiii_andres/screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/home', icon: Icons.house, name:'Menu Principal', screen: const HomeScreen()),
    MenuOptions(route: '/counter', icon: Icons.numbers, name: 'Contador', screen: const CounterScreen()),
    MenuOptions(route: '/presentation', icon: Icons.person, name: 'Pantalla de Presentacion', screen: const PresentationScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/counter': (BuildContext context) => const CounterScreen(),
    '/presentation': (BuildContext context) => const PresentationScreen(),
  };
}