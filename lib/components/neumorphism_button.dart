import 'package:flutter/material.dart';

class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({Key? key}) : super(key: key);
  @override
  State<NeumorphismButton> createState() => _NeumorphismButtonState();
}

class _NeumorphismButtonState extends State<NeumorphismButton> {
  bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            _isElevated = !_isElevated;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50),
              boxShadow: _isElevated
                  ? [
                      BoxShadow(
                          color: Colors.grey[500]!,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]
                  : null),
        ),
      )),
    );
  }
}
