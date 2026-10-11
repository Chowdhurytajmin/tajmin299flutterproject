
import 'package:flutter/material.dart';

class Assignment3Body extends StatelessWidget {
  const Assignment3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(100),
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(37, 99, 235, 1),
            border: Border.all(
              width: 5,
              color: const Color.fromRGBO(37, 99, 235, 1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            // shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Colors.deepPurpleAccent,
                const Color.fromRGBO(37, 99, 235, 1),
              ],
            ),
          ),
          child: Text("its body"),
        ),
      ),
    );
  }
}

