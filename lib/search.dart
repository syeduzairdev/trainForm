import 'package:fiverr/widgets.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 190, 188, 188),
        leading: InkWell(
            onTap: (() => Navigator.pop(context)),
            child: Icon(Icons.arrow_back_ios_outlined)),
        title: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search with Trip id or Vehicle no",
              hintStyle: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
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
    );
  }
}
