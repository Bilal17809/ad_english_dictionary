import 'package:flutter/cupertino.dart';

class ListTileModel {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  ListTileModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });
}
