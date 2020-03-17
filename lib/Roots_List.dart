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
                      Image.asset("image/shivin_nalwaya_s.jpg",
                          height: 150),
                      Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),),
                      Text("Manish Kapoor",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                      Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                    ],
                  )
                )
              ),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),),
                          Text("Shivin Nalwaya",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                        ],
                      )
                  )
              ),

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
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text("Manish",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                        ],
                      )
                  )
              ),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),),
                          Text("Manish",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                        ],
                      )
                  )
              ),

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
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),),
                          Text("Manish",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                        ],
                      )
                  )
              ),
              Container(
                  child: Card(
                      elevation: 20,
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/shivin_nalwaya_s.jpg",
                              height: 150),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),),
                          Text("Manish",style: new TextStyle(fontSize: 22,color: Colors.deepPurple),),
                          Text("Description",style: new TextStyle(fontSize: 16,color: Colors.black),)
                        ],
                      )
                  )
              ),

            ],
          ),
        )

      ]),
    );

  }
}
