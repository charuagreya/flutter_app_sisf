import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_sisf2/Api_Service.dart';
import 'package:flutter_app_sisf2/Chapter_POJO.dart';
import 'package:flutter_app_sisf2/Subject_Info.dart';


class Chapter_List extends StatelessWidget {

  final Image_Item image_item;
  // In the constructor, require a Todo.
  Chapter_List({Key key, @required this.image_item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(image_item.name),
        centerTitle: true,
      ),
      body: FutureBuilder<Chapter_POJO>(
          future: ApiService().getChapterList(image_item.id),
          builder: (context, snapshot) {

            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data.responce.length,
                itemBuilder: (context, index) {
                  return Card(

                    borderOnForeground: true,
                    elevation: 11.0,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Subjectinfo(chapter_info:  snapshot.data.responce[index])));
                      },
                    //    Navigator.push(context, MaterialPageRoute(builder: (context) => Chapter_List(image_item : snapshot.data.Responce[index])),);

                        child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:   GestureDetector(
                          child: Text( snapshot.data.responce[index].name.toString(),
                            style: TextStyle(fontSize: 22.0),),
                        ),
                        /*child: Container(
                        child: Text(
                          snapshot.data.Responce[index].name.toString(),
                          style: TextStyle(fontSize: 22.0),
                        ),
                      ),*/
                      ),
                    ),
                  );
                },
              );
            }
            //return Text('Title from Post JSON : ${snapshot.data.Responce[0].name}');
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}





