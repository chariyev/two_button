import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyButton(),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  String activeButton = 'Cep';
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () {
              setState(() {
                activeButton = 'Cep';
              });
            },
            child: Container(
              width: 140,
              height: 200,
              color: activeButton == 'Sag'
                  ? Color.fromARGB(255, 67, 51, 3)
                  : Color.fromARGB(255, 222, 168, 8),
              child: Center(
                  child: Text(
                'Cep',
                style: TextStyle(fontSize: 28, color: Colors.white),
              )),
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                activeButton = 'Sag';
              });
            },
            child: Container(
              width: 140,
              height: 200,
              color: activeButton == 'Sag'
                  ? Color.fromARGB(255, 222, 168, 8)
                  : Color.fromARGB(255, 67, 51, 3),
              child: Center(
                  child: Text(
                'Sag',
                style: TextStyle(fontSize: 28, color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
