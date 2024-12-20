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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffea5e00),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 70),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 16,
                          offset: const Offset(0, 5),
                          spreadRadius: -3,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: secure,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  secure = !secure;
                                  setState(() {});
                                },
                                icon: Icon(secure == false
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Text(
                      textAlign: TextAlign.left,
                      'Forget password?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(195, 55),
                      backgroundColor: Color(0xffea5e00),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, bottom: 25),
                    child: Text(
                      'Continue with social media',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.infinity, 60),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Facebook',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.infinity, 60),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Github',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    ],
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      cursorColor: Colors.black,
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
                      cursorColor: Colors.black,
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
                      backgroundColor: Colors.white,
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
                      'RESET',
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
