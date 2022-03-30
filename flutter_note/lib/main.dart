import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var inputText = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Note'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                const Spacer(),
                TextField( //const除く？
                  onChanged: (text) {
                    setState(() { 
                      inputText = text;
                    });
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                    onPressed: inputText.isEmpty ? null : () {}, //onTapではない？
                    child: const Text('保存')),
                const Spacer(),
              ]),
            )));
  }
}
