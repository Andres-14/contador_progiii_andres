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
        title: const Text('Contador (Fe en que funcione)', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Toca los botones para alterar el numero en el contador:', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
            Text('$_counter', style: const TextStyle(fontSize: 65, fontWeight: FontWeight.bold),),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',

            onPressed: _incrementCounter,

            child: const Icon(Icons.add),

          ),
          const SizedBox(height: 10,),

          FloatingActionButton(
            heroTag: 'btn2',

            onPressed: _decrementCounter,

            child: const Icon(Icons.remove),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'btn3',

            onPressed: _multiplyCounter,

            child: const Icon(Icons.one_x_mobiledata),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: 'btn4',

            onPressed: _divideCounter,

            child: const Icon(Icons.safety_divider),

          ),
          const SizedBox(height: 10,),
          FloatingActionButton( 
            heroTag: 'btn5',

            onPressed: _resetCounter,

            child: const Icon(Icons.refresh),

          ),
        ],
      ),
    );
  }
}
