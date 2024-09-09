import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pushNamed(context, '/video_call');
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: const Text(
                  "JOIN CHANNEL",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
