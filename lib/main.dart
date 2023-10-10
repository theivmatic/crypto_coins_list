import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        primarySwatch: Colors.yellow,
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
    //Просто переменная для сокращения
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.normal,
        ),
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '200000\$',
            style: theme.textTheme.labelSmall,
          ),
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
