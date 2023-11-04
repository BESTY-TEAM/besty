import 'package:flutter/material.dart';


class MeetScreen extends StatelessWidget {
  const MeetScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text(
            "Meet and Webinar Screen",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),
          ),            
          )
    );
  }
}
