import 'package:flutter/material.dart';

class BmiCal extends StatefulWidget {
  const BmiCal({Key? key}) : super(key: key);

  @override
  State<BmiCal> createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double result = 0;
  double h_value = 0;
  double w_value = 0;
  void calculate() {
    h_value = double.parse(height.text)/100;
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: height,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(),
                hintText: 'Enter the height',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: weight,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(),
                hintText: 'Enter the weight',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {calculate();
                setState(() {

                });},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black26)),
              child: Text('CALCULATE')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black26)),
              child: Text('RESULT=$result')),
        ],
      ),
    );
  }
}
