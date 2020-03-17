import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sisf2/Course.dart';
import 'package:flutter_app_sisf2/Faq.dart';
import 'package:flutter_app_sisf2/Our_Story.dart';
import 'package:flutter_app_sisf2/Roots_List.dart';
import 'package:flutter_app_sisf2/Subject_list.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen()); // define it once at root level.
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: Center(
          child: new Image.asset(
            'image/app_logo.png',
            width: 262.0,
            height: 262.0,
          ),
        ),
      ),
      //   <-- image
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListenToDrawerEvent();
  }
}

class ListenToDrawerEvent extends StatefulWidget {
  @override
  ListenToDrawerEventState createState() {
    return new ListenToDrawerEventState();
  }
}

class ListenToDrawerEventState extends State<ListenToDrawerEvent> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  onclick_fb() async {
    const url = 'https://www.facebook.com/sisfeducation';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  onclick() async {
    const url = 'https://www.instagram.com/sisfeducation';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("SISF Education"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.all(22.0),
              child: Image.asset('image/app_logo.png'),
            ),
            Divider(
              height: 2.0,
              color: Colors.black,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Our Course"),
              onTap: () => press_listitem(7),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Our Story"),
              onTap: () => press_listitem(1),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Our Roots"),

              onTap:  () => press_listitem(2),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("FAQ"),
              onTap:  () => press_listitem(3),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Contact Us"),
              onTap:  () => press_listitem(4),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Quizzes"),
              onTap:  () => press_listitem(5),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text("Logout"),
              onTap:  () => press_listitem(6),
            ),
            Divider(
              height: 1.0,
              color: Colors.black26,
              thickness: 0.5,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
              height: 200.0,
              child: Carousel(
                images: [
                  ExactAssetImage("image/slider_1.jpeg"),
                  ExactAssetImage("image/slider.JPG"),
                  ExactAssetImage("image/slider_2.JPG"),
                  ExactAssetImage("image/slider_3.JPG"),
                  ExactAssetImage("image/slider_1.jpeg"),
                  ExactAssetImage("image/slider_3.JPG"),
                ],
                dotSize: 8.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              )),
          Container(
            margin: const EdgeInsets.all(11.0),
            padding: const EdgeInsets.all(11.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(11.0))),
            child: Center(
              child: Text(
                "SRAJAN INTERNATIONAL \n SCHOOL OF FINANCE",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(11.0),
            padding: const EdgeInsets.all(11.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(11.0))),
            child: Column(
              children: <Widget>[
                Text(
                  "About SISF",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  "SISF is a change, a betterment for all accounting personnel who are looking forward to not only go global but actually Grow "
                      "Global. With unique methodologies and rigorous training programmes, SISF is considered to be a unique civilization for finance "
                      "and accounting professionals.",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      fontStyle: FontStyle.normal),
                )
              ],
            ),

            /* child: Center(
              child: Text("",style: TextStyle(fontSize: 18.0),),
            ),*/
          ),
          Container(
            margin: const EdgeInsets.all(11.0),
            padding: const EdgeInsets.all(11.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(11.0))),
            child: Column(
              children: <Widget>[
                Text(
                  "About Srajan",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  "'SRAJAN’, means , the creator,   an idea of creating leaders.  Founded in 1999, with Mr.Manish Kapoor’s sacrifices, determination and immense hard work "
                      "in the past 2 decades, starting from 4 students has today created 50,000+ domestically and 100+ globally successful"
                      " leaders. With the vision of going global, Srajan has made an outstanding approach to deliver best in class international education in "
                      "finance to individuals in Udaipur. This vision serves as a fundamental pillar in the making of SISF",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),

            /* child: Center(
              child: Text("",style: TextStyle(fontSize: 18.0),),
            ),*/
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(100.0, 22.0, 0.0, 22.0),
            padding: const EdgeInsets.all(11.0),
            child: Row(
              children: <Widget>[
                FlatButton(
                  //        onPressed: onclick_fb(),
                    child: Image.asset(
                      "image/facebook.png",
                      width: 44.0,
                      height: 44.0,
                    )),
                Container(
                  width: 44.0,
                ),
                Container(
                  //   onPressed: onclick(),
                  child: Image.asset(
                    "image/instagram.png",
                    width: 44.0,
                    height: 44.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  press_listitem(int i) {
    if (i == 1) {
      Show_Toast("Our Stroy");
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Our_story()));
    } else if (i == 2) {

      Show_Toast("Our Roots");
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Roots_List()));
    } else if (i == 3) {
      Show_Toast("FAQ");
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Faq()));
    } else if (i == 4) {
      Show_Toast("Contact Us");
      //Navigator.push(context, MaterialPageRoute(builder:(context)=>Subject_List()));
    } else if (i == 5) {
      Show_Toast("Quizzes");
      Navigator.push(context, MaterialPageRoute(builder: (context) => Subject_List()),);

    } else if (i == 6) {
      Show_Toast("Logout");
      //Navigator.push(context, MaterialPageRoute(builder:(context)=>Subject_List()));
    } else {
      Show_Toast("Our Course");
      Navigator.push(context, MaterialPageRoute(builder: (context) => Course_type()),);
    }
    return null;
  }

  void Show_Toast(String s) {
    // Fluttertoast.showToast(msg: s,fontSize: 20.0,backgroundColor: Colors.deepPurple,gravity: ToastGravity.BOTTOM,textColor: Colors.white,toastLength:Toast.LENGTH_LONG);
    Fluttertoast.showToast(
        msg: s,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
