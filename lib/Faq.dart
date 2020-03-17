import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
        centerTitle: true,
      ),
    body: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<dynamic, dynamic>> list_product;

  @override
  void initState() {
    super.initState();
    list_product = new List();
    for (var k = 1; k <= 6; k++) {
      Map map = Map();
      if (k == 1) {
        map.putIfAbsent(getMonth(k), () => Acca());
      } else if (k == 2) {
        map.putIfAbsent(getMonth(k), () => AccaPro());
      } else if (k == 3) {
        map.putIfAbsent(getMonth(k), () => Why_accaPro());
      } else if (k == 4) {
        map.putIfAbsent(getMonth(k), () => Igrad());
      } else if (k == 5) {
        map.putIfAbsent(getMonth(k), () => why_Igrad());
      } else {
        map.putIfAbsent(getMonth(k), () => AccaScope());
      }

      list_product.add(map);
    }
    list_product.map((s) {}).map((list) => list).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<String> list = List();

    return Scaffold(
      // backgroundColor: Colors.white[400],
      body: Center(
          child: ListView(
            children: <Widget>[
              for (final map in list_product)
                for (final keys in map.keys) ListItem(keys, map[keys].toList()),
            ],
          )),
    );
  }

  String getMonth(int month) {
    switch (month) {
      case 1:
        return "What is ACCA?";
      case 2:
        return "What is ACCA PRO?";
      case 3:
        return "Why ACCA pro?";
      case 4:
        return "What is iGRAD in Finance?";
      case 5:
        return "Why iGRAD in Finance?";
      case 6:
        return "Scope of ACCA in India";
    }
  }

  List<dynamic> Acca() {
    return [
      "ACCA, the Association of Chartered Certified Accountants is the world’s largest accounting body offering one of the top most accounting qualifications that is “Chartered Certified Accountant”. It was founded back in the year 1904 and since then has grown with every passing day. Currently ACCA consists of 2,00,000 members with 4,86,000 students in 180 countries, making it the largest financial and accounting organization around the world.\n \n With global recognition ACCA is one of the best career choice in the field of finance and accounting.",
    ].toList();
  }

  List<dynamic> AccaPro() {
    return [
      "ACCAPRO is a unique combination of advanced financial and accounting qualification delivered only at SISF. A programme developed by intense research of the industry and it’s leaders, the curriculum benefits our students to procure a distinguished set of skills that will help them meet & exceed expectations in all future endeavors. \n \n The Programme is designed to deliver the core benefits of ACCA with a varied skillset to ensure immediate acceptance of our students in the industry. In ACCAPRO we provide ACCA qualification alongside with certifications in Business Analysis (ECBA by IIBA) as well as a CDTP (Corporate Development Training Programme) developed with the assistance of industry experts decorated with years of experience in the field of Recruitment and Human Resource Management.",
    ].toList();
  }

  List<dynamic> Why_accaPro() {
    return [
      "ACCAPRO is a unique combination of advanced financial and accounting qualification delivered only at SISF. A programme developed by intense research of the industry and it’s leaders, the curriculum benefits our students to procure a distinguished set of skills that will help them meet & exceed expectations in all future endeavors. \n \n The Programme is designed to deliver the core benefits of ACCA with a varied skillset to ensure immediate acceptance of our students in the industry. In ACCAPRO we provide ACCA qualification alongside with certifications in Business Analysis (ECBA by IIBA) as well as a CDTP (Corporate Development Training Programme) developed with the assistance of industry experts decorated with years of experience in the field of Recruitment and Human Resource Management.",
    ].toList();
  }

  List<dynamic> Igrad() {
    return [
      "ACCA together with OBU (Oxford Brooks University) has developed a degree exclusively available to ACCA students. This program enables the student to acquire not only ACCA qualification but also a degree, which together proves to be more valuable. It provides students a better opportunity, as such advanced combinations are desired by employers in multiple fields. \n \n iGRAD in Finance, introduced by SISF incorporates ACCA qualification with extensive learning that includes ECBA by IIBA and CDTP (Corporate Development Training Program). Moreover, it also delivers the benefits of NCFM by NSE and regular guidance for your international graduation also known as OBU Mentorship, all under the same roof.",
    ].toList();
  }

  List<dynamic> why_Igrad() {
    return [
      "ACCA pro is a combination of unique skill sets, that will help our students acquire a strong hand when competing with other candidates. This programme offers a number of add ons that are primarily noticed by professional recruiters or human resource management personnel. The programme focuses not only on your ACCA Qualification but also provides an exposure to the factors that are equally important as soon as you step out of the campus into the global arena.",
    ].toList();
  }

  List<dynamic> AccaScope() {
    return [
      "ACCA being a globally recognized qualification, that offers you exposure and job prospects into the top most designation in any industry provides various career opportunities in India as well as globally. Some of these opportunities are as follows: \n 1. Corporate Reporting Preparing high-quality business reports to support stakeholder understanding & decision making. \n 2. Leadership and Management Managing resources & leading organizations effectively & ethically, understanding stakeholder needs & priorities. \n 3. Strategy and Innovation Assessing & evaluating strategic position and identifying imaginative options to improve performance & position; implementing innovative & cost effective solutions leading to effective change management & business process improvement. \n 4. Financial Management Implementing effective investment & financing decisions within the business environment in areas such as investment appraisal, tax & risk management, treasury & working capital management, to ensure value creation. \n 5. Sustainable Management Accounting Assessing, evaluating and implementing management accounting and performance management systems for planning, measuring, controlling & monitoring business performance to ensure sustainable value creation. \n    6. Taxation Complying with tax regulation and systems, communicating with relevant authorities to establish and ethically manage tax liabilities for individuals and companies, using appropriate tax computation and planning techniques. \n 7. Audit and Assurance Providing high quality audits by evaluating information systems and internal controls, gathering evidence and performing procedures to meet the objectives of audit and assurance engagements. \n 8. Governance Risk and Ethics Ensuring effective and appropriate governance; to evaluate, monitor & implement appropriate risk identification procedures by designing and implementing effective internal audit & control systems. \n 9. Stakeholder Relationship Management Managing stakeholder expectations and needs by aligning the organization to their requirements, engaging s take holder s effectively and communicating relevant information. \n 10. Professionalism and Ethics Applying knowledge, sensitivity and judgment to act in accordance with fundamental principles of ethical behaviour & personal ethics."
    ].toList();
  }
}

class ListItem extends StatefulWidget {
  List<String> listItems;
  String headerTitle;

  ListItem(this.headerTitle, this.listItems);

  @override
  State<StatefulWidget> createState() {
    return ListItemState();
  }
}

class ListItemState extends State<ListItem> {
  bool isExpand = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

  @override
  Widget build(BuildContext context) {
    List<String> listItem = this.widget.listItems;
    return Padding(
      padding: (isExpand == true)
          ? const EdgeInsets.all(8.0)
          : const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: (isExpand != true)
                ? BorderRadius.all(Radius.circular(8))
                : BorderRadius.all(Radius.circular(22)),
            border: Border.all(color: Colors.white)),
        child: ExpansionTile(
          key: PageStorageKey<String>(this.widget.headerTitle),
          title: Container(
              width: double.infinity,
              child: Text(
                this.widget.headerTitle,
                style: TextStyle(fontSize: (isExpand != true) ? 18 : 22),
              )),
          trailing: (isExpand == true)
              ? Icon(
            Icons.arrow_drop_down,
            size: 10,
            color: Colors.blue,
          )
              : Icon(Icons.arrow_drop_up, size: 10, color: Colors.grey),
          onExpansionChanged: (value) {
            setState(() {
              isExpand = value;
            });
          },
          children: [
            for (final item in listItem)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.white,
                        duration: Duration(microseconds: 500),
                        content: Text(
                            "Selected Item $item " + this.widget.headerTitle)));
                  },
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          item,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
                ),
              )
          ],
        ),
      ),
    );
  }
}
