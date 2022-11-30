import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isMale = true;
  double height = 120;
  int age = 15;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isMale = !isMale;
                      setState(() {});
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: isMale ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'MALE',
                          style: TextStyle(
                            color: isMale ? Colors.white : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      isMale = !isMale;
                      setState(() {});
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: !isMale ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'FEMALE',
                          style: TextStyle(
                            color: !isMale ? Colors.white : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.toInt()}',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' CM',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                    min: 80,
                    max: 300,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                   age++;
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepPurple,
                                  radius: 20,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.deepPurple,
                                onPressed: () {
                                  if (age > 5) {
                                  age--;
                                  }
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  // counter++;
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.deepPurple,
                                  radius: 20,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.deepPurple,
                                onPressed: () {
                                  // if (counter > 0) {
                                  // counter--;
                                  // }
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('CALCUALTE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
