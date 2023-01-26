import 'package:flutter/material.dart';

class EmptySectionWidget extends StatelessWidget {
  const EmptySectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Image.asset('assets/images/empty_section.png'),
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text('This section is empty'),
          ),
        ],
      ),
    );
  }
}
