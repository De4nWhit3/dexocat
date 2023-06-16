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
        leading: Container(
          padding: const EdgeInsets.only(left: 20),
          child: Transform.scale(
            scale: 1.5,
            child: Material(
              child: Ink(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  onTap: () {},
                  customBorder: const CircleBorder(),
                  child: Image.asset(
                    'assets/images/logo/logo.png',
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Text(
          widget.title,
        ),
        actions: [
          AppBarActionButton(
            title: 'Register',
            onPressed: () {},
          ),
          AppBarActionButton(
            title: 'Login',
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(),
    );
  }
}

class AppBarActionButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const AppBarActionButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.normal),
      ),
    );
  }
}
