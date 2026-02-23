import 'package:flutter/material.dart';
import '../settings/presentation/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onTap;

  const AppDrawer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Text("Music Player")),
          ListTile(
            title: const Text("Songs"),
            onTap: () => onTap(0),
          ),
          ListTile(
            title: const Text("Albums"),
            onTap: () => onTap(1),
          ),
          ListTile(
            title: const Text("Settings"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SettingsScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}