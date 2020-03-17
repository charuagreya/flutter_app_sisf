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
                                new TextStyle(fontSize: 16, color: Colors.grey,fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "Manish Kapoor",
                            style: new TextStyle(
                                fontSize: 22, color: Colors.black),
                          ),
                          Text("_____________________"),
                          Text(
                            "Qualifications:\n Company Secretary, Masters of Business",
                            style:
                                new TextStyle(fontSize: 16, color: Colors.grey,fontStyle: FontStyle.italic),
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
                            new TextStyle(fontSize: 16, color: Colors.grey,fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "Shivin Nalwaya",
                            style: new TextStyle(
                                fontSize: 22, color: Colors.black),
                          ),
                          Text("_____________________"),
                          Text(
                            "Qualifications:\n Chartered Accountant. Mr. Shivin Nalwaya, designated as",
                            style:
                            new TextStyle(fontSize: 16, color: Colors.grey,fontStyle: FontStyle.italic),
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
                          Image.asset("image/shreya_jain_l.jpg",
                              height: 150),
                          Text(
                            "Shreya Jain",
                            style: new TextStyle(
                                fontSize: 22, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\n Chartered Accountant, \nBachelors of Commerce. Miss Shreya Jain is an aspiring young",
                            style: new TextStyle(
                                fontSize: 16, color: Colors.grey),
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
                              fontSize: 22, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\n Company Secretary, \nBachelors of Commerce, \nMasters of Commerce.",
                            style: new TextStyle(
                                fontSize: 16, color: Colors.grey),
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
                              fontSize: 22, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\n Company Secretary, \nBachelors of Commerce",
                            style: new TextStyle(
                                fontSize: 16, color: Colors.grey),
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
                              fontSize: 22, color: Colors.black,),
                          ),
                          Text("_____________________"),

                          Text(
                            "Qualifications:\n Bachelor of Business \nManagement, Master \nof Commerce",
                            style: new TextStyle(
                                fontSize: 16, color: Colors.grey),
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
