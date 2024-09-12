import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  // Increment counter function
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter & Bid'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter: $_counter'),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment Counter',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 32),
            MaximumBid(),
          ],
        ),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  double _currentBid = 0;

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            cardColor: Colors.green.shade300,
          ),
          child: const Card(
              child: Text('custom card color change',
                  style: TextStyle(
                    backgroundColor: Colors.green,
                  ))),
        ),
        Text('Current Bid: \$${_currentBid.toStringAsFixed(2)}'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _increaseBid,
          child: const Text('Increase Bid'),
        ),
      ],
    );
  }
}
