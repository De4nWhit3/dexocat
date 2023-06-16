import 'package:flutter/material.dart';
import 'package:flutter_dexo/theme.dart';

enum SingingCharacter { lafayette, jefferson }

void main() {
  runApp(DexoCatApp());
}

class DexoCatApp extends StatelessWidget {
  DexoCatApp({super.key});
  final String title = 'Dexocat';
  final DexoCatTheme dexoCatTheme = DexoCatTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: dexoCatTheme.darkTheme,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Material(
          child: Ink(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Image.asset('assets/images/logo/logo.png'),
            ),
          ),
        ),
        title: Text(
          widget.title,
        ),
      ),
      body: const Column(),
    );
  }
}
