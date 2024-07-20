import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiClaculator extends StatefulWidget {
  const BmiClaculator({super.key});

  @override
  State<StatefulWidget> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiClaculator> {
  bool male = true;
  int height = 184;
  int weight = 90;
  int age = 22;
  late double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:
              const Color(0xff0a0e21), // Set the color of the AppBar
          title: const Text(
            "BMI CALCULATOR",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: Container(
        width: 400,
        height: 900,
        padding: const EdgeInsets.all(25),
        color: const Color(0xff0a0e21),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    male = true;
                    setState(() {});
                  },
                  child: Container(
                    width: 160,
                    height: 170,
                    decoration: BoxDecoration(
                      color: male ? Colors.blue : const Color(0xff1d1e33),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/male-gender.png",
                          color: Colors.white,
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "MALE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    male = false;
                    setState(() {});
                  },
                  child: Container(
                    width: 160,
                    height: 170,
                    decoration: BoxDecoration(
                      color: male ? const Color(0xff1d1e33) : Colors.blue,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/femenine.png",
                          color: Colors.white,
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "FEMALE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: 340,
              height: 230,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xff1d1e33),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$height",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  Slider(
                      min: 0,
                      max: 300,
                      activeColor: Colors.red,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 200,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "WEIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$weight",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff0a0e21),
                            child: IconButton(
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          CircleAvatar(
                            backgroundColor: const Color(0xff0a0e21),
                            child: IconButton(
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                              icon: const Icon(Icons.remove),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 200,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Color(0xff1d1e33),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "AGE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$age",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff0a0e21),
                            child: IconButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              icon: const Icon(Icons.add),
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 20),
                          CircleAvatar(
                            backgroundColor: const Color(0xff0a0e21),
                            child: IconButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              icon: const Icon(Icons.remove),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.red,
                onPressed: () {
                  bmi = weight / pow(height / 100, 2);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResult(
                          male: male,
                          height: height,
                          weight: weight,
                          age: age,
                          bmi: bmi,
                        ),
                      ));
                },
                child: const Text(
                  "Check Your BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
