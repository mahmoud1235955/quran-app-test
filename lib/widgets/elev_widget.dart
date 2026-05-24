import 'package:flutter/material.dart';

class ElevWidget extends StatelessWidget {
  const ElevWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });
  final String text;
  final bool isSelected;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: isSelected ? Colors.white : Colors.black,
          width: 1,
        ),
        minimumSize: Size(73, 37),
        backgroundColor: isSelected
            ? Color.fromRGBO(149, 67, 255, 1)
            : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
