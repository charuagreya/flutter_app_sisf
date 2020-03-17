import 'package:flutter/material.dart';
import 'package:flutter_app_sisf2/Chapter_POJO.dart';
import 'package:flutter_app_sisf2/Quiz_Screen.dart';

class Subjectinfo extends StatelessWidget {
  final Responce chapter_info;

  // In the constructor, require a Todo.
  Subjectinfo({Key key, @required this.chapter_info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter_info.name),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(11.0),
            elevation: 22,
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Center(
                child: Text(
                  chapter_info.description,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Center(
              child: Text(
                "Total no of Questions:  ${chapter_info.noOfQuestion}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Center(
              child: Text(
                "Timer:   ${chapter_info.timing}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Quiz_Screen(chapter_info.id),)
                  );
                },
                child: const Text('Submit', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5,
              ),
            ),
            ),
        ],
      ),
    );
  }
}
