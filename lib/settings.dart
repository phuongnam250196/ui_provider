import 'package:flutter/material.dart';
import 'package:ui_provider/drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:ui_provider/model/ui.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Settings'),
      ),
      drawer: const DrawerMenu(),
      body: Consumer<UI>(builder: (context, ui, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Font Size: ${ui.fontSize.toInt()}',
                style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineLarge?.fontSize),
              ),
            ),
            Slider(
                min: 0.5,
                value: ui.sliderFontSize,
                onChanged: (newValue) {
                  ui.fontSize = newValue;
                }),
          ],
        );
      }),
    );
  }
}
