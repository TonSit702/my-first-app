import 'package:flutter/material.dart';
import '../services/calculation_service.dart';
import '../widgets/result_display.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> _results = [];
  bool _calculationsStarted = false;

  void _executeCalculations() {
    setState(() {
      _calculationsStarted = true;
      _results = [
        CalculationService.executeAllCalculations(),
        CalculationService.executeAdvancedCalculations(),
        CalculationService.executeMixedCalculations(),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Mathematical Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Icon(Icons.functions, size: 60, color: Colors.blue),
            SizedBox(height: 15),

            Text(
              '01 + 02 + 03',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            if (!_calculationsStarted) ...[
              Text(
                'This calculator uses multiple mathematical modules:\n\n'
                '• Basic Arithmetic Operations\n'
                '• Geometric Calculations\n'
                '• Sequence Generators\n'
                '• Trigonometric Functions\n'
                '• Advanced Mathematical Services',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 30),

              // Hidden as normal text (tap this text to execute)
              GestureDetector(
                onTap: _executeCalculations,
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Double-tap to execute (most hidden)
              GestureDetector(
                onDoubleTap: _executeCalculations,
                child: Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ] else ...[
              // Results section
              Container(
                height: 400, // Fixed height for results
                child: ListView.builder(
                  itemCount: _results.length,
                  itemBuilder: (context, index) {
                    List<String> titles = ['Data 01:', 'Data 02:', 'Data 03:'];

                    return ResultDisplay(
                      title: titles[index],
                      result: _results[index],
                    );
                  },
                ),
              ),
            ],

            SizedBox(height: 20), // Extra bottom spacing
          ],
        ),
      ),
    );
  }
}

// 70705274
