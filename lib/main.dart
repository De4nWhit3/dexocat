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
  SingingCharacter? _character = SingingCharacter.lafayette;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Dexocat'),
      ),
      body: Column(
        children: [
          DexoCatMobileHomePage(),
          Column(
            children: <Widget>[
              ListTile(
                title: const Text('Lafayette'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Thomas Jefferson'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ],
          )
        ],
      ),
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
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'hello button',
                    // style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Container(
                  // width: double.infinity,
                  padding: const EdgeInsets.only(top: 50),
                  // height: 200,
                  // color: Colors.yellow,
                  child: Text('hi'),
                ),
                Container(
                  // width: double.infinity,
                  // height: 300,
                  // color: Colors.red,
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
            // height: double.infinity,
            // color: Colors.blue,
            // width: 200,
            child: Text('hi'),
          ),
        ),
      ],
    );
  }
}
