import 'package:flutter/material.dart';

class PresentationScreen extends StatelessWidget {

  void showMoreInfo(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text('Sobre mí:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),)),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Me gustan los Videojuegos, las Computadoras y todo lo relacionado a esa clase de cosas (Programacion, Base de Datos, Diseños, etc)', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 8),
              Text('Hago ejercicio, mis libros favoritos son las novelas de Jurassic Park y mi juego favorito esta entre el Resident Evil 2 o 4.', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 8),
              Text('(Mi novia quiso colaborar con el diseño de la app y me pidio que le diera creditos)', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 8),

              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://media.tenor.com/0H7fdWLnr4YAAAAe/sanrio-kuromi.png')
              ),
              SizedBox(height: 6),
              Center(child: Text('Consejos de diseño por: @txvalmt_', style: TextStyle(fontWeight: FontWeight.bold),)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {Navigator.pop(context);},
              child: const Text('Cerrar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ),
          ],
        );
      },
    );
  }
   
  const PresentationScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Presentación', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/04/96/e1/0496e100560b2fc8094f4502f7e6c64d.jpg'),
            ),

            const SizedBox(height: 8),
            const Text('Andrés Jiménez', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const Text('Ing.De Sistemas 6to Trimestre', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {showMoreInfo(context);},
              child: const Text('Saber Más', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),)
          ],  
          ),
        ),
      );
  }
}