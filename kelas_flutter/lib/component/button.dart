import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? label;
  final Icon? icon;
  final Color? textColor;
  final void Function()? onSentuh;
  const RoundedButton(
      {this.onSentuh, this.textColor, this.icon, this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSentuh,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            icon ?? const SizedBox(),
            const SizedBox(
              width: 10,
            ),
            Text(
              label!,
              style: TextStyle(color: textColor ?? Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
