import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

int count = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halloween Proj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Click the image'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halloween proj'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: GridView.count(crossAxisCount: 4, children: <Widget>[
        Container(
            color: Colors.grey[850],
            child: Center(
                child: Text(ifWin(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    )))),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
        Container(
          child: theImage(),
        ),
      ]),
    );
  }

  int random() {
    Random rand = new Random();
    int n = rand.nextInt(16);
    return n;
  }

  Widget theImage() {
    bool theVisibility = true;
    int num = random();
    if (num <= 2) {
      return (GestureDetector(
          onTap: () {
            setState(() {
              theVisibility = false;
              count += 1;
            });
          },
          child: Visibility(
              visible: theVisibility,
              child: Image.network(
                  'https://img.freepik.com/free-vector/scary-pumpkin-halloween-lantern-realistic-vector_1441-733.jpg?w=2000',
                  fit: BoxFit.fill))));
    }
    return Container(color: Colors.orange);
  }

  String ifWin() {
    if (count == 10)
      return 'Happy Halloween, You Win';
    else if (count > 10) return 'You clicked too many times';
    return count.toString();
  }
}

class end extends StatelessWidget {
  const end({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'You WIN, Happy Halloween!',
          style: TextStyle(color: Colors.red, fontSize: 50),
        ),
      ),
    );
  }
}
