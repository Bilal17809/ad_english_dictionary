import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconOrSvg extends StatelessWidget {
  const IconOrSvg({
    super.key,
    this.iconData,
    this.svgIconAsset,
    this.icon,
    this.size,
    this.color,
  });

  /// Used to show an icon in the snackbar
  final IconData? iconData;

  /// Used to show an svg icon in the snackbar
  final String? svgIconAsset;

  /// Used to show an icon widget in the snackbar
  final Widget? icon;

  final double? size;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final iconWidget = switch ((iconData, svgIconAsset, icon)) {
      (IconData iconData, null, null) => Icon(
        iconData,
        size: size,
        color: color,
      ),
      (null, String svgIconAsset, null) => SvgPicture.asset(
        svgIconAsset,
        width: size,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      ),
      (null, null, Widget icon) => icon,
      _ => Icon(Icons.error, size: size, color: color),
    };
    return iconWidget;
  }
}