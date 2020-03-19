import 'package:flutter/material.dart';

class Roots_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Roots";

    return Scaffold(
      appBar: AppBar(
        title: Text("Our Roots"),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Card(
                      margin: const EdgeInsets.all(11),
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/manish_kapoor_l.jpg", height: 150),
                          Text(
                            "Founder and Chairman",
                            style:
                                new TextStyle(fontSize: 16, color: Colors.blueGrey,fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "Manish Kapoor",
                            style: new TextStyle(
                                fontSize: 17, color: Colors.black),
                          ),
                          Text("_____________________"),
                          Text(
                            "Qualifications:\nCompany Secretary, \nMasters of Business",
                            style:
                                new TextStyle(fontSize: 15, color: Colors.blueGrey,fontStyle: FontStyle.italic),
                          )
                        ],
                      ))),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text(
                            "Managing Director",
                            style:
                            new TextStyle(fontSize: 16, color: Colors.blueGrey,fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "Shivin Nalwaya",
                            style: new TextStyle(
                                fontSize: 17, color: Colors.black),
                          ),
                          Text("_____________________"),
                          Text(
                            "Qualifications:\nChartered Accountant. \nManaging Director",
                            style:
                            new TextStyle(fontSize: 15, color: Colors.blueGrey,fontStyle: FontStyle.italic),
                          )
                        ],
                      ))),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 280,
                  child: Card(

                      margin: const EdgeInsets.all(11),
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/shreya_jain_l.jpg",
                              height: 150),
                          Text(
                            "Shreya Jain",
                            style: new TextStyle(
                                fontSize: 17, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\nChartered Accountant, \nBachelors of Commerce.",
                            style: new TextStyle(
                                fontSize: 15, color: Colors.blueGrey),
                          )
                        ],
                      ))),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/mayank.jpg",
                              height: 150),
                          Text(
                            "Mayank Sharma",
                            style: new TextStyle(
                              fontSize: 17, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\nCompany Secretary,\nBachelors of \nCommerce.",
                            style: new TextStyle(
                                fontSize: 15, color: Colors.blueGrey),
                          )
                        ],
                      ))),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Card(
                      margin: const EdgeInsets.all(11),
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/suraj.jpg",
                              height: 150),
                          Text(
                            "Suraj Bohra LW",
                            style: new TextStyle(
                              fontSize: 17, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\nCompany Secretary, \nBachelors of Commerce",
                            style: new TextStyle(
                                fontSize: 15, color: Colors.blueGrey),
                          )
                        ],
                      ))),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/girish.jpg",
                              height: 150),
                          Text(
                            "Girish Samdani",
                            style: new TextStyle(
                              fontSize: 17, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\nBachelor of Business\nManagement, Master\nof Commerce",
                            style: new TextStyle(
                                fontSize: 15, color: Colors.blueGrey),
                          )
                        ],
                      ))),
            ],
          ),
        )
      ]),
    );
  }
}
