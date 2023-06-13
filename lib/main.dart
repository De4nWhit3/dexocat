import 'package:flutter/material.dart';

void main() {
  runApp(const DexoCatApp());
}

class DexoCatApp extends StatelessWidget {
  const DexoCatApp({super.key});
  final String title = 'Dexocat';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DexoCatHomePage(title: title),
    );
  }
}

class DexoCatHomePage extends StatefulWidget {
  const DexoCatHomePage({super.key, required this.title});

  final String title;

  @override
  State<DexoCatHomePage> createState() => _DexoCatHomePageState();
}

class _DexoCatHomePageState extends State<DexoCatHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DexoCatMobileHomePage(),
    );
  }
}

class DexoCatMobileHomePage extends StatelessWidget {
  const DexoCatMobileHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 50),
                  height: 200,
                  color: Colors.yellow,
                  child: Text('hi'),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.red,
                  child: Text('hi'),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.only(top: 50),
            height: double.infinity,
            color: Colors.blue,
            width: 200,
            child: Text('hi'),
          ),
        ),
      ],
    );
  }
}
