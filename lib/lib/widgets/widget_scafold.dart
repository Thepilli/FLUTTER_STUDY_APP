import 'package:flutter/material.dart';

class Widget_scafold extends StatefulWidget {
  const Widget_scafold({super.key});

  @override
  State<Widget_scafold> createState() => _Widget_scafoldState();
}

class _Widget_scafoldState extends State<Widget_scafold> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 180, 171),
      appBar: AppBar(
        title: const Text('Thepilli'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(_count.toString()),
        ),
      ),
      drawer: const Drawer(
        child: SafeArea(
          child: ListTile(
            title: Text('Clack'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
