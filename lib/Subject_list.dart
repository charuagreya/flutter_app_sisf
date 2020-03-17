import 'package:flutter/material.dart';
import 'package:flutter_app_sisf2/Chapter_list.dart';
import 'Api_Service.dart';

void main() {
  runApp(new Subject_List());
}

class Subject_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Subject List'),
          centerTitle: true,
        ),
        body: FutureBuilder<Product>(
            future: ApiService().getPost(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: snapshot.data.Responce.length,
                  itemBuilder: (context, index) {
                    return Card(
                      borderOnForeground: true,
                      elevation: 11.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Chapter_List(
                                      image_item:
                                          snapshot.data.Responce[index])),
                            );
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Chapter_List(),settings: RouteSettings(arguments: snapshot.data.Responce[index])),);
                          },
                          child: Text(
                            snapshot.data.Responce[index].name.toString(),
                            style: TextStyle(fontSize: 22.0),
                          ),
                        ),
                        /*child: Container(
                        child: Text(
                          snapshot.data.Responce[index].name.toString(),
                          style: TextStyle(fontSize: 22.0),
                        ),
                      ),*/
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

    );
  }
}
