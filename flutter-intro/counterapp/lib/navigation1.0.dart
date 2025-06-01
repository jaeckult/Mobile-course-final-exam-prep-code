import 'package:flutter/material.dart';
import 'display_widgets.dart' as display;
import 'gridview.dart' as grid;
import 'layout_widgets.dart' as layout;
import 'listView.dart' as list;
import 'scaffold.dart' as main2;
import 'main.dart' as main1;
import 'stack.dart' as stack;

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 76, 89, 175),
        ),
      ),
      home: const NavigationHomePage(),
    );
  }
}

class NavigationHomePage extends StatelessWidget {
  const NavigationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const display.MyHomePage(title: 'Display Widgets')),
                );
              },
              child: const Text('Display Widgets'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const grid.MyHomePage(title: 'Grid View')),
                );
              },
              child: const Text('Grid View'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const layout.MyHomePage(title: 'Layout Widgets')),
                );
              },
              child: const Text('Layout Widgets'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const list.MyHomePage(title: 'List View')),
                );
              },
              child: const Text('List View'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const main2.MyHomePage(title: 'Main 2')),
                );
              },
              child: const Text('Scaffold'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const main1.MyHomePage(title: 'Main')),
                );
              },
              child: const Text('Main'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const stack.MyHomePage(title: 'Stack')),
                );
              },
              child: const Text('Stack'),
            ),
          ],
        ),
      ),
    );
  }
} 