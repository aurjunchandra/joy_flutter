import 'package:flutter/material.dart';
class BuildButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onclick;

 BuildButton({
    super.key,
    required this.text,
    required this.onclick,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: color ?? Colors.grey),
            onPressed: onclick,
            child: Text(
              text,
              style: TextStyle(
              fontSize: 30,
              color: Colors.white),)),
      ),
    );
  }
}