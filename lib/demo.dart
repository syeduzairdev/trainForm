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
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 2),
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
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.18,
                                                decoration: BoxDecoration(
                                                    color: gender.animation
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    // color: Color.fromARGB(
                                                    //     255, 253, 243, 153),

                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.animation
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "ALL",
                                                  style: TextStyle(
                                                      color: gender.animation
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
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
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                decoration: BoxDecoration(
                                                    color: gender.female
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    // color: Color.fromARGB(
                                                    //     255, 236, 233, 233),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.female
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "LOADING",
                                                  style: TextStyle(
                                                      color: gender.female
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.weight();
                                            },
                                            child: Container(
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                decoration: BoxDecoration(
                                                    color: gender.third
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.third
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "UNLOADING",
                                                  style: TextStyle(
                                                      color: gender.third
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.completed();
                                            },
                                            child: Container(
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                decoration: BoxDecoration(
                                                    color: gender.four
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.four
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "COMPLETED",
                                                  style: TextStyle(
                                                      color: gender.four
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.documents();
                                            },
                                            child: Container(
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.28,
                                                decoration: BoxDecoration(
                                                    color: gender.five
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.five
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "DOCUMENTS",
                                                  style: TextStyle(
                                                      color: gender.five
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
                                                ))),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              gender.payments();
                                            },
                                            child: Container(
                                                height: 35,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                decoration: BoxDecoration(
                                                    color: gender.six
                                                        ? Color.fromARGB(
                                                            255, 233, 245, 233)
                                                        : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    border: Border.all(
                                                      color: gender.six
                                                          ? Color.fromARGB(255,
                                                              128, 241, 128)
                                                          : Colors.grey,
                                                    )),
                                                child: Center(
                                                    child: Text(
                                                  "PAYMENTS",
                                                  style: TextStyle(
                                                      color: gender.six
                                                          ? Color.fromARGB(
                                                              255, 11, 138, 11)
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 11),
                                                ))),
                                          ),
                                        ],
                                      ),
                                    ));
                              },
                              body: ListTile(
                                  title: Container(
                                // decoration: BoxDecoration(
                                //     color: Color.fromARGB(255, 204, 202, 202),
                                //     borderRadius: BorderRadius.only(
                                //         topLeft: Radius.circular(10),
                                //         topRight: Radius.circular(10))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                              builder: (BuildContext context) =>
                                                  search()),
                                        );
                                      },
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.87,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.2),
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
                                              Text(
                                                "Enter Trip id or Lorry Number",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 75, 74, 74),
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "View By Month & Year",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
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
                                          height: 40,
                                          width: 65,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "JAN",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 8, 65, 110)),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_outlined,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
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
                                          height: 40,
                                          width: 65,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "2022",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 8, 65, 110)),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_outlined,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "VIEW",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 8, 65, 110)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
