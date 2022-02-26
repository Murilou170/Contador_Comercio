import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });

  }

  void increment() {
    setState(() {
      count++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      title: Text("Restaurante ",
      style: TextStyle(
        color: Colors.black,
      ),
      ),
      ),
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "pode entrar!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Text(
              count.toString(),
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: decrement,
                child: Text(
                  "saiu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 30),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  fixedSize: Size(100, 100),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: increment,
                child: Text(
                  "entrou",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
