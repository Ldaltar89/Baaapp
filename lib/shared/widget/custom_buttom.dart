import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtom({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: onPressed,
      height: 60,
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}

class CustomFillButtom extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;
  const CustomFillButtom({
    super.key,
    required this.text,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: const Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          )),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: onPressed,
        color: color,
        elevation: 0,
        height: 60,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
