import 'package:flutter/material.dart';

class FailureBody extends StatelessWidget {
  const FailureBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'there is an error ,please try again',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
