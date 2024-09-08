import 'package:flutter/material.dart';
import 'maximum_bid.dart'; // Import your MaximumBid class here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // disable the default debug banner
      debugShowCheckedModeBanner: false,
      /* uncomment the the multiline comment to see task 1
      title: 'Flutter Demo',
      theme: ThemeData(
        // setting theme of whole website
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      */
      // Task 2
      title: 'Flutter Bidding Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold), // Updated to titleLarge
          headlineMedium: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold), // Updated to headlineMedium
        ),
      ),
      home: MaximumBid(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                cardColor: Colors.green.shade300,
              ),
              child: const Card(
                  child: Text('lorem ipsum dolor sit amet, consectetur adipis',
                      style: TextStyle(
                        backgroundColor: Colors.green,
                      ))),
            ),
            const Text(
              'you have pushed counter following times',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
