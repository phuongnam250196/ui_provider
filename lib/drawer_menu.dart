import 'package:flutter/material.dart';

const kTitle = 'Provider';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            child: Center(
              child: Text(
                kTitle,
                style: TextStyle(
                  fontSize: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.fontSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          getListTile('Home', context, '/'),
          getLine(),
          getListTile('About', context, '/about'),
          getLine(),
          getListTile('Settings', context, '/settings'),
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(title, context, routeName) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushReplacementNamed(context, routeName);
      }
    );
  }
}