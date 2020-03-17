import 'package:flutter/material.dart';

class Our_story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Our Story"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(22),
              child: Image.asset("image/app_logo.png", width: 180, height: 180),
            ),
            Card(
              margin: const EdgeInsets.all(11),
              child: Container(
                  padding: const EdgeInsets.all(11),
                  child: Text(
                    "An idea that redecorates students with not only high end professional accounting & finance qualification, but also with a set of dignified attributes that will help them rise in this competitive epidemic. The all new venture of Srajan Education, SISF, is not just an institution but an umbrella of opportunities that proposes various  training programmes for kinds of financial qualifications.\n\n SISF operates with a sole objective of implementing unique methodology of learning and recreating personalities with the skill sets that are desired by industry leaders in the field of financial services and accounting. Our motive is to provide valued learning to our students to help them stand out as soon as they step in the "
                    "global arena.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
