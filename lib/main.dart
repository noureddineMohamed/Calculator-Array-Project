import 'package:flutter/material.dart';

void main() {
  return runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Calculator App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      controller: number1Controller,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        label: Text(
                          'Number 1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      controller: number2Controller,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        label: Text(
                          'Number 2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'Result = $result',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {
                          result = double.parse(number1Controller.text) +
                              double.parse(number2Controller.text);
                          setState(() {});
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {
                          result = double.parse(number1Controller.text) -
                              double.parse(number2Controller.text);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Icon(
                            Icons.minimize,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {
                          result = double.parse(number1Controller.text) *
                              double.parse(number2Controller.text);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '*',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.black),
                        ),
                        onPressed: () {
                          result = double.parse(number1Controller.text) /
                              double.parse(number2Controller.text);
                          setState(() {});
                        },
                        child: Text(
                          '/',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    onPressed: () {
                      result = 0;
                      setState(() {});
                    },
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
