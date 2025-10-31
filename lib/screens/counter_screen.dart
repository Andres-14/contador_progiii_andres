import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divideCounter() {
    setState(() {
      if (_counter != 0) {
        _counter ~/= 2;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Peak (Fe en que funcione)', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 3, 2, 49),
        ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Toca los botones para alterar el numero en el contador:', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 26, 18, 180)),),
            Text('$_counter', style: const TextStyle(fontSize: 65, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 26, 18, 180)),),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',

            onPressed: _incrementCounter,

            child: Icon(Icons.add, color: Colors.white,),
            backgroundColor: const Color.fromARGB(255, 3, 2, 49),

          ),
          const SizedBox(height: 10,),

          FloatingActionButton(
            heroTag: 'btn2',

            onPressed: _decrementCounter,

            child: Icon(Icons.remove, color: Colors.white,),
            backgroundColor:const Color.fromARGB(255, 3, 2, 49),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'btn3',

            onPressed: _multiplyCounter,

            child: Icon(Icons.one_x_mobiledata, color: Colors.white,),
            backgroundColor: const Color.fromARGB(255, 3, 2, 49),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'btn4',

            onPressed: _divideCounter,

            child: Icon(Icons.safety_divider, color: Colors.white,),
            backgroundColor: const Color.fromARGB(255, 3, 2, 49),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton( 
            heroTag: 'btn5',

            onPressed: _resetCounter,

            child: Icon(Icons.refresh, color: Colors.white,),
            backgroundColor: const Color.fromARGB(255, 3, 2, 49),

          ),
        ],
      ),
    );
  }
}
