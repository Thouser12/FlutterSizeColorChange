import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      double iconSize = 300;
      double valueRed = 0;
      double valueGreen = 0;
      double valueBlue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                if (iconSize > 50){
                  setState(() {
                    iconSize -= 50;
                  });
                }
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  iconSize = 50;
                }); 
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  iconSize = 300;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  iconSize = 500;
                });  
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                if (iconSize < 500){
                  setState(() {
                    iconSize += 50;
                  });  
                }
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: iconSize,
                  color: Color.fromRGBO(valueRed.toInt(), valueGreen.toInt(), valueBlue.toInt(), 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: valueRed,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valueRed=value;
                        });
                      },
                    ),
                  ),
                  Text(
                    valueRed.toInt().toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: valueGreen,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valueGreen=value;
                        });
                      },
                    ),
                  ),
                  Text(
                    valueGreen.toInt().toString(),
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: valueBlue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          valueBlue=value;
                        });
                      },
                    ),
                  ),
                  Text(
                    valueBlue.toInt().toString(),
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}