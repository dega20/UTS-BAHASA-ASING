import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.image,
  });

  final VoidCallback? onPressed;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        width: 400,
        child: Card(
          color: onPressed != null ? Color.fromARGB(255, 91, 100, 109) : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  label,
                  style: const TextStyle(
                    letterSpacing: 2,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset(image, width: 30, height: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
