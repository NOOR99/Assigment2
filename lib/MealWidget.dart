import 'dart:math';

import 'package:flutter/material.dart';

int _counter = 0;
int Cost = 0;
bool isChecked = false;
bool isChecked2 = false;
bool isChecked3 = false;
bool isChecked4 = false;
bool isChecked5 = false;
bool isChecked6 = false;

int sizecost = 0;
int additioncost = 0;
int Meal_Cost = 0;

class MealWidget extends StatefulWidget {
  @override
  State<MealWidget> createState() {
    return MealState();
  }
}

class MealState extends State<MealWidget> {
  void _incrementCounter() {
    if (_counter < 10) {
      setState(() {
        _counter++;
        findCost(_counter, sizecost, additioncost);
      });
    }
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
        findCost(_counter, sizecost, additioncost);
      });
    }
  }

  int findCost(int count, int sizecost, int additioncost) {
    return Meal_Cost = (sizecost + additioncost) * count;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 16),
            child: Text(
              "بيتزا بالخضار ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(" بيتزا بالخضار مميزة",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 15, 16, 8),
                child: Text(
                  '$Meal_Cost',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    InkWell(
                      onTap: _decrementCounter,
                      child: Text(
                        "-",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      '$_counter',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    InkWell(
                      onTap: _incrementCounter,
                      child: Text(
                        "+",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Color.fromARGB(255, 219, 216, 216),
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 16),
            child: Row(textDirection: TextDirection.rtl, children: [
              Text(
                " اختيارك من الحجم",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("( اختياري )",
                  style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(" اختر من القائمة",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
          ),
          //////////////////////////////////////////////////الصنف الأول
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'صغير',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '7 ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                    if (isChecked == true) {
                      sizecost += 7;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      sizecost -= 7;
                      findCost(_counter, sizecost, additioncost);
                    }

                    print(sizecost);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color.fromARGB(255, 219, 216, 216),
              thickness: 3,
            ),
          ),
          ////////////////////////////////الصنف الثاني
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'وسط ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '12 ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked2,
                onChanged: (value) {
                  setState(() {
                    isChecked2 = value ?? false;
                    if (isChecked2 == true) {
                      sizecost += 12;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      sizecost -= 12;
                      findCost(_counter, sizecost, additioncost);
                    }

                    print(sizecost);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color.fromARGB(255, 219, 216, 216),
              thickness: 3,
            ),
          ),
          ///////////////////////////////الصنف الثالث
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'كبير',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '25',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked3,
                onChanged: (value) {
                  setState(() {
                    isChecked3 = value ?? false;
                    if (isChecked3 == true) {
                      additioncost += 25;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      additioncost -= 25;
                      findCost(_counter, sizecost, additioncost);
                    }

                    print(sizecost);
                  });
                },
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 219, 216, 216),
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 16),
            child: Row(textDirection: TextDirection.rtl, children: [
              Text(
                " اختيارك من الإضافات",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("( اختياري )",
                  style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(" اختر من القائمة",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
          ),
          //////////////////////////////////////////////////الصنف الأول
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'جبنة',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '5 ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked4,
                onChanged: (value) {
                  setState(() {
                    isChecked4 = value ?? false;
                    if (isChecked4 == true) {
                      additioncost += 5;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      additioncost -= 5;
                      findCost(_counter, sizecost, additioncost);
                    }

                    print(additioncost);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color.fromARGB(255, 219, 216, 216),
              thickness: 3,
            ),
          ),
          ////////////////////////////////الصنف الثاني
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'فطر',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '7 ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked5,
                onChanged: (value) {
                  setState(() {
                    isChecked5 = value ?? false;
                    if (isChecked5 == true) {
                      additioncost += 7;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      additioncost -= 7;
                      findCost(_counter, sizecost, additioncost);
                    }

                    print(additioncost);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Divider(
              color: Color.fromARGB(255, 219, 216, 216),
              thickness: 3,
            ),
          ),
          ///////////////////////////////الصنف الثالث
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'بطاطا',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '10',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                  textAlign: TextAlign.start,
                ),
              ),
              Spacer(),
              Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(width: 1.0, color: Colors.grey),
                ),
                value: isChecked6,
                onChanged: (value) {
                  setState(() {
                    isChecked6 = value ?? false;
                    if (isChecked6 == true) {
                      additioncost += 10;
                      findCost(_counter, sizecost, additioncost);
                    } else {
                      additioncost -= 10;
                      findCost(_counter, sizecost, additioncost);
                    }
                    print(additioncost);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Perform an action when the button is pressed
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text(
                  'إضافة إلى السلة',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
