import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final String result;
  final String title;
  
  const ResultDisplay({
    Key? key,
    required this.result,
    required this.title,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700],
            ),
          ),
          SizedBox(height: 10),
          Text(
            result,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'monospace',
              color: Colors.green[700],
            ),
          ),
        ],
      ),
    );
  }
}