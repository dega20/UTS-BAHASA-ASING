import 'package:flutter/material.dart';

class KuisButton extends StatelessWidget {
  const KuisButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final String child;

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
                  child,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: onPressed != null ? Colors.white : Colors.black26,
                  ),
                ),
              ),
              if (onPressed != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
