import 'package:flutter/material.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class CustomSaveButton extends StatelessWidget {
  final double size;
  final VoidCallback onTap;
  final Color? iconColor;
  final bool isSaved;
  const CustomSaveButton({
    super.key,
    required this.size,
    required this.onTap,
    this.iconColor,
    required this.isSaved,
  });

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: isSaved ? Icons.bookmark : Icons.bookmark_border,
      size: size,
      onTap: onTap,
      iconColor: iconColor,
    );
  }
}
