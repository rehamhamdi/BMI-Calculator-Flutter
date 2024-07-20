import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool male;
  final int height;
  final int weight;
  final int age;
  final double bmi;
  const BmiResult(
      {super.key,
      required this.male,
      required this.height,
      required this.weight,
      required this.age,
      required this.bmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BMI RESULT",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff0a0e21),
        ),
        body: Container(
            width: 400,
            height: 900,
            padding: const EdgeInsets.all(25),
            color: const Color(0xff0a0e21),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    padding: EdgeInsets.all(15),
                    color: Color(0xff1d1e33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Gender :",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          male ? " Male" : " Female",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.all(15),
                    color: const Color(0xff1d1e33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Result : ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${bmi.floor()}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 200,
                    height: 100,
                    padding: const EdgeInsets.all(15),
                    color: const Color(0xff1d1e33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age : ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
