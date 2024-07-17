import 'package:flutter/material.dart';

class TypeButton extends StatelessWidget {
  const TypeButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        width: 400,
        child: Card(
          color: onPressed != null ? Theme.of(context).primaryColor : Colors.grey,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  label,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: onPressed != null ? Colors.white : Colors.black26,
                  ),
                ),
              ),
              if (onPressed != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
