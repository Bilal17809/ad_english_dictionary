import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/theme/app_colors.dart';

class RoundedImage extends StatelessWidget {
  final String assetPath;
  final double size;
  final bool showIcon;

  const RoundedImage({
    super.key,
    required this.size,
    required this.assetPath,
    this.showIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: skyColor,
                width: 4,
              ),
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (showIcon) ...[
            Positioned(
              bottom: 5,
              right: 0,
              child: Icon(
                Icons.add_circle,
                color: skyColor,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
