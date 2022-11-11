import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = 'Text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 20,
        ),
        child: Container(
          color: Colors.orange,
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type Something',
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_textController.text);
                    setState(() {
                      _displayText = _textController.text;
                    });
                  },
                  child: Text('Click Here')),
              Text(_displayText),
            ],
          ),
        ),
      ),
    ));
  }
}
