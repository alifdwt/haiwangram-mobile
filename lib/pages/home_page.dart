import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).colorScheme.tertiary,
        ),
        title: Text(
          "Haiwangram",
          style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text('Ini adalah beranda'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
