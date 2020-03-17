import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_sisf2/Api_Service.dart';
import 'package:flutter_app_sisf2/Pojo_question.dart';

class Quiz_Screen extends StatefulWidget {
  final String Chapterid;

  Quiz_Screen(this.Chapterid);

  @override
  _Quiz_ScreenState createState() => _Quiz_ScreenState();
}

class _Quiz_ScreenState extends State<Quiz_Screen> {
  int Selected_Question = 0;
  Color _myColor1 = Colors.white;
  Color _myColor2 = Colors.white;
  Color _myColor3 = Colors.white;
  Color _myColor4 = Colors.white;
  bool pressAttention=false;


  Widget Raised_Button(String options, int position, bool boolean) {

    return RaisedButton(
      color: boolean ? Colors.grey : Colors.blue,
      onPressed: () {
        Raised_Button(options, position, true);
      },
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(11.0),
          side: BorderSide(color: Colors.red)),
      child: Text(options,style: TextStyle(color: Colors.black),),
    );
  }


  @override
  Widget build(BuildContext context) {
    int Quest = Selected_Question + 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz Question: $Quest"),
          centerTitle: true,
        ),
        body: FutureBuilder<Pojo_question>(
            future: ApiService().getQuestions_List(widget.Chapterid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Center(
                            child: Text(
                              snapshot
                                  .data.responce[Selected_Question].question,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 22, left: 22, bottom: 0),
                        child: Raised_Button(
                            snapshot.data.responce[Selected_Question]
                                .questionRows[0].objective,
                            0,
                            false),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 22, left: 22, bottom: 0),
                        child: Raised_Button(
                            snapshot.data.responce[Selected_Question]
                                .questionRows[1].objective,
                            1,
                            false),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 22, left: 22, bottom: 0),
                        child: Raised_Button(
                            snapshot.data.responce[Selected_Question]
                                .questionRows[2].objective,
                            2,
                            false),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 22, left: 22, bottom: 0),
                        child: Raised_Button(
                            snapshot.data.responce[Selected_Question]
                                .questionRows[3].objective,
                            3,
                            false),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 22, right: 22, left: 22, bottom: 0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(11.0),
                              side: BorderSide(color: Colors.red)),
                          onPressed: () {
                            setState(() {
                              Selected_Question++;
                            });
                          },
                          color: Colors.red,
                          child: Text("Next"),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
