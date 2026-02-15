import 'package:flutter/material.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class CustomSaveButton extends StatefulWidget {
  final double size;
  final VoidCallback onTap;
  final Color? iconColor;
  const CustomSaveButton({
    super.key,
    required this.size,
    required this.onTap,
    this.iconColor,
  });

  @override
  State<CustomSaveButton> createState() => _CustomSaveButtonState();
}

class _CustomSaveButtonState extends State<CustomSaveButton> {
  bool _isSaved = false;
  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: _isSaved ? Icons.bookmark : Icons.bookmark_border,
      size: widget.size,
      onTap: () {
        setState(() {
          _isSaved = !_isSaved;
        });
        widget.onTap();
      },
      iconColor: widget.iconColor,
    );
  }
}
