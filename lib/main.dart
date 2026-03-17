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
      home: const RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Real Madrid App',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Image.asset(
                  'assets/bernabeu.jpg',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      'assets/madrid.png',
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
              padding: const EdgeInsets.all(20.0),
              color: Colors.red[800],
              child: const Text(
                'Can Real Madrid win the 16th UCL this year?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.amber[400],
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 20.0,
              ),
              margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.sports_soccer, color: Colors.black87),
                      SizedBox(height: 8.0),
                      Text('Matches', style: TextStyle(color: Colors.black87)),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.emoji_events, color: Colors.black87),
                      SizedBox(height: 8.0),
                      Text('Trophies', style: TextStyle(color: Colors.black87)),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.groups, color: Colors.black87),
                      SizedBox(height: 8.0),
                      Text('Players', style: TextStyle(color: Colors.black87)),
                    ],
                  ),
                ],
              ),
            ),

            const CounterCard(),
          ],
        ),
      ),
    );
  }
}

class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
      padding: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "UCL Throphy: $_counter",
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          Container(
            color: Colors.blue[900],
            child: IconButton(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
