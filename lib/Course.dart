import 'package:flutter/material.dart';

class Course_type extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Acca Course"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Image.asset("image/img_acc.jpeg"),
            ),
            Card(

              margin: const EdgeInsets.all(22),
              child: Container(
                  padding: const EdgeInsets.all(11),
                  child: Text("Founded in 1904, the Association of Chartered Certified Accountants (ACCA) is the oldest global professional accounting body offering the Chartered Certified Accountant / ACCA qualification. With over 200,000 members and 486,000 students ACCA is the largest accounting body globally. ACCA being one of the most important accounting qualification, offers various benefits. Some of these advantages are as follows:\n\n" +
                      "· Global acceptance.\n" +
                      "ACCA is recognized globally, and can help you work at various financial roles in the country of your choice.\n\n" +
                      "· Industrial experience\n" +
                      "ACCA not only provides you a qualification but also opportunities to gain relevant experience and get industry ready alongside your qualification.\n\n" +
                      "· Employer’s demand\n" +
                      "Employers are very well known about the skills, value and contribution an ACCA qualified professional can make to the organization.\n\n" +
                      "· Industry relevant skills.\n" +
                      "The ACCA Qualification provides subtle relevancy to all forms of industries, which enables you to make a choice for your career after qualification as well.\n\n" +
                      "· Flexibility & innovative studying patterns.\n" +
                      "Innovative and flexible study patterns help you complete your ACCA Qualification alongside your busy work schedule or essential qualification.\n\n" +
                      "· Multiple degrees\n" +
                      "You are eligible to pursue additional diplomas and qualifications as you move forward with ACCA membership.\n\n" +
                      "· Employer network\n" +
                      "Along with a global recognized qualification ACCA also supports it’s members with extensive network of 7900 employers globally, in order to provide more job prospects on ACCA career portal.\n\n" +
                      "· CBE – computer based examination\n" +
                      "ACCA is supported with examination taken at the registered CBE centers to provide their students the ease of completing their papers on fast track basis.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
            )
          ],
        ),
      );

  }
}
