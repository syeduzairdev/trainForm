import 'package:fiverr/drawer.dart';
import 'package:fiverr/provider.dart';
import 'package:fiverr/search.dart';
import 'package:fiverr/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    final gender = Provider.of<providermodel>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff2d7e7e),
          title: Text("GLR GROUPS"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 15),
              child: Container(
                height: 10,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  "वाला",
                  style: TextStyle(color: Colors.blue),
                )),
              ),
            ),
            Icon(Icons.notification_add),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
                    child: Column(
                      children: [
                        ExpansionPanelList(
                          expandedHeaderPadding: EdgeInsets.all(0),
                          elevation: 0,
                          dividerColor: Colors.white,
                          expansionCallback: (panelIndex, isExpanded) {
                            setState(() {});
                          },
                          children: [
                            ExpansionPanel(
                              backgroundColor: Colors.white,
                              canTapOnHeader: true,
                              headerBuilder: (context, isExpanded) {
                                return ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                _expanded = !_expanded;
                                                setState(() {});
                                              },
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/filter.jpg"))),
                                              )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.gender();
                                            },
                                            child: Container(
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.32,
                                                decoration: BoxDecoration(
                                                  color: gender.animation
                                                      ? Colors.yellow
                                                      : Colors.white,
                                                  // color: Color.fromARGB(
                                                  //     255, 253, 243, 153),

                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  "COMPLETED -01",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.changegender();
                                            },
                                            child: Container(
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.32,
                                                decoration: BoxDecoration(
                                                  color: gender.female
                                                      ? Colors.yellow
                                                      : Colors.white,
                                                  // color: Color.fromARGB(
                                                  //     255, 236, 233, 233),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  "IN LOADING -01",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.weightkg;
                                            },
                                            child: Container(
                                                height: 50,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.32,
                                                decoration: BoxDecoration(
                                                  color: gender.weightkg
                                                      ? Colors.yellow
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                    child: Text(
                                                  "IN LOADING -01",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.32,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 236, 233, 233),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                "IN LOADING -01",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10),
                                              ))),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.32,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 236, 233, 233),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                "IN LOADING -01",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10),
                                              ))),
                                          SizedBox(
                                            width: 15,
                                          ),
                                        ],
                                      ),
                                    ));
                              },
                              body: ListTile(
                                  title: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        search()),
                                          );
                                        },
                                        child: Container(
                                          height: 50,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            //  border: Border.all(color: Colors.grey)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.search,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Enter Trip id or Vehicle no",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 5,
                                      // ),
                                      // Container(
                                      //     height: 40,
                                      //     width: MediaQuery.of(context).size.width * 0.38,
                                      //     decoration: BoxDecoration(
                                      //       color: Colors.purple,
                                      //       borderRadius: BorderRadius.circular(10),
                                      //     ),
                                      //     child: Center(
                                      //         child: Text(
                                      //       "+CREATE NEW TRIP",
                                      //       style: TextStyle(color: Colors.white, fontSize: 13),
                                      //     ))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("View By Month"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          width: 180,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: TextField(
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Month",
                                                    hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey)),
                                              )),
                                              Container(
                                                  height: 50,
                                                  child: VerticalDivider(
                                                      color: Colors.grey)),
                                              Expanded(
                                                  child: TextField(
                                                textAlign: TextAlign.center,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Year",
                                                    hintStyle: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey)),
                                              )),
                                            ],
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("View only"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          width: 180,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Dropdown",
                                                hintStyle: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey)),
                                          ))
                                    ],
                                  ),
                                ],
                              )),
                              isExpanded: _expanded,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Widgetss().Con(
                            context,
                            "7111",
                            " IND",
                            " VIZG",
                            " RAIPUR",
                            " RICE & 35T & 15,00",
                            Colors.green,
                            "TRIP COMPLETED",
                            "PAYMENT STATUS:",
                            " NOT UPDATED",
                            "UPDATE>",
                            "DOCUMENTS STATUS:",
                            " NOT UPDATED"),
                        SizedBox(
                          height: 15,
                        ),
                        Widgetss().Con(
                          context,
                          "8466",
                          " SALUR",
                          " RAIPUR",
                          " KAKINDA",
                          " IRON & 35T & 15,00",
                          Colors.orange,
                          "WAITING FOR LOADING STATUS",
                          "",
                          "",
                          "",
                          "Currently vehicle at ",
                          "vizag",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Widgetss().Con(
                          context,
                          "6566",
                          " KAKINDA",
                          " VIZG",
                          " SALUR",
                          " RICE & 35T & 15,00",
                          Color.fromARGB(255, 7, 53, 90),
                          "WAITING FOR UNLOADING STATUS",
                          "",
                          "",
                          "",
                          "Currently vehicle at ",
                          "Raipur",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "CREATE NEW TRIP",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(child: Drrawer().drawer(context)));
  }
}
