import 'package:fiverr/widgets.dart';
import 'package:flutter/material.dart';

class Drrawer {
  Widget drawer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thomas",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Thomas@mail.com",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("home"),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("Vehicles"),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("Staff"),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("Expenses"),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("Trip"),
          SizedBox(
            height: 25,
          ),
          Widgetss().aaa("Search"),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
