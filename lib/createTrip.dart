import 'package:flutter/material.dart';

class createTrip extends StatefulWidget {
  const createTrip({Key? key}) : super(key: key);

  @override
  State<createTrip> createState() => _createTripState();
}

class _createTripState extends State<createTrip> {
  final _veicle = TextEditingController();
  final _location = TextEditingController();
  final _loading = TextEditingController();
  final _driver = TextEditingController();
  final _cleaner = TextEditingController();
  final _date = TextEditingController();
  final _time = TextEditingController();
  final _amount = TextEditingController();
  final _notes = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Color.fromARGB(255, 4, 108, 192),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 65.0),
                      child: Text(
                        "CREATE LOADING TRIP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.55,
                    color: Color.fromARGB(255, 131, 160, 212),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.332,
                              color: Color.fromARGB(255, 207, 187, 9),
                              child: Center(
                                child: Text(
                                  "BACK",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _veicle.clear();
                              _location.clear();
                              _loading.clear();
                              _driver.clear();
                              _cleaner.clear();
                              _date.clear();
                              _time.clear();
                              _amount.clear();
                              _notes.clear();
                            },
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.332,
                              color: Color.fromARGB(255, 39, 9, 207),
                              child: Center(
                                child: Text(
                                  "CLEAR\nFORM",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.332,
                            color: Color.fromARGB(255, 25, 207, 9),
                            child: Center(
                              child: Text(
                                "CREATE\nTRIP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 150,
                left: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 430,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        child: TextField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          controller: _veicle,
                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              labelText: "Select Vehicle*",
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                              border: InputBorder.none,
                              //  hintText: "Select Vehicle*",
                              hintStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 228, 225, 225),
                      ),
                      Container(
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _location,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "From Location*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(Icons.arrow_back),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _loading,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Loading Location*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 228, 225, 225),
                      ),
                      Container(
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _driver,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Driver Name*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                            Container(
                                height: 150,
                                width: 30,
                                child: VerticalDivider()),
                            Expanded(
                              child: TextField(
                                controller: _cleaner,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Cleaner Name*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 228, 225, 225),
                      ),
                      Container(
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _date,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Trip Date*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                            Container(
                                height: 70,
                                width: 30,
                                child: VerticalDivider()),
                            Expanded(
                              child: TextField(
                                controller: _time,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Time*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                            Container(
                                height: 70,
                                width: 30,
                                child: VerticalDivider()),
                            Expanded(
                              child: TextField(
                                controller: _amount,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Amount*",
                                    labelStyle: TextStyle(
                                        fontSize: 14, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Color.fromARGB(255, 228, 225, 225),
                      ),
                      Expanded(
                        child: Container(
                          height: 80,
                          child: TextField(
                            controller: _notes,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Notes",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
