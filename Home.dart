import 'package:flutter/material.dart';
import 'dart:math';

class CollapsingAppbarPage extends StatefulWidget {
  CollapsingAppbarPage({Key? key}) : super(key: key);

  @override
  _CollapsingAppbarPageState createState() => _CollapsingAppbarPageState();
}

class _CollapsingAppbarPageState extends State<CollapsingAppbarPage> {
  List<String> m = [
    "اللهم إني ظلمت نفسي ظلما كثيرا ولا يغفر الذنوب إلا أنت، فاغفر لي مغفرة من عندك وارحمني، إنك أنت الغفور الرحيم. متفق عليه.",
    "اللهم إني أعوذ بك من الجبن، وأعوذ بك من البخل، وأعوذ بك من أن أرد إلى أرذل العمر، وأعوذ بك من فتنة الدنيا، وعذاب القبر”. أخرجه البخاري",
    "اللهم إني أعوذ بك من زوال نعمتك، وتحول عافيتك وفجاءة نقمتك، وجميع سخطك”. أخرجه مسلم."
  ];
  List<String> allahNames = [
    'الرحمن',
    'الرحيم',
    'الملك',
    'القدوس',
    'السلام',
    'المؤمن',
    'المهيمن',
    'العزيز',
    'الجبار',
    'المتكبر',
    'الخالق',
    'البارئ',
    'المصور',
    'الغفار',
    'القهار',
    'الوهاب',
    'الرزاق',
    'الفتاح',
    'العليم',
    'القابض',
    'الباسط',
    'الخافض',
    'الرافع',
    'المعز',
    'المذل',
    'السميع',
    'البصير',
    'الحكم',
    'العدل',
    'اللطيف',
    'الخبير',
    'الحليم',
    'العظيم',
    'الغفور',
    'الشكور',
    'العلي',
    'الكبير',
    'الحفيظ',
    'المقيت',
    'الحسيب',
    'الجليل',
    'الكريم',
    'الرقيب',
    'المجيب',
    'الواسع',
    'الحكيم',
    'الودود',
    'المجيد',
    'الباعث',
    'الشهيد',
    'الحق',
    'الوكيل',
    'القوي',
    'المتين',
    'الولي',
    'الحميد',
    'المحصي',
    'المبدئ',
    'المعيد',
    'المحيي',
    'المميت',
    'الحي',
    'القيوم',
    'الواجد',
    'الماجد',
    'الواحد',
    'الأحد',
    'الصمد',
    'القادر',
    'المقتدر',
    'المقدم',
    'المؤخر',
    'الأول',
    'الآخر',
    'الظاهر',
    'الباطن',
    'الوالي',
    'المتعالي',
    'البر',
    'التواب',
    'المنتقم',
    'العفو',
    'الرؤوف',
    'مالك الملك',
    'ذو الجلال والإكرام',
  ];

  int currentIndex = 0;
  int currentIndex1 = 0;

  void changeText() {
    setState(() {
      // Generate a random index
      var random = Random();
      int newIndex = random.nextInt(m.length);

      // Ensure the new index is different from the current one
      while (newIndex == currentIndex) {
        newIndex = random.nextInt(m.length);
      }

      currentIndex = newIndex;
    });
  }

  void changeText1() {
    setState(() {
      // Generate a random index
      var random = Random();
      int newIndex = random.nextInt(m.length);

      // Ensure the new index is different from the current one
      while (newIndex == currentIndex1) {
        newIndex = random.nextInt(allahNames.length);
      }

      currentIndex1 = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
              expandedHeight: 400.0,
              floating: false,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/deb.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 120.0),
                      height: 200,
                      width: 320,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "قال   النَّبِيِّ ﷺ",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            "لَا يُؤْمِنُ أحَدُكُمْ، حتَّى يُحِبَّ لأخِيهِ ما ",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Text(
                            "يُحِبُّ لِنَفْسِهِ.",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    // function push ma tnshch
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_left_sharp,
                                    color: Color(0xff809258),
                                    size: 40,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 180,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/moun.png"),
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "ورد المساء",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 180,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/tasb.png"),
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(width: 20),
                              Text(
                                "تسبيح",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 180,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/morninig.png"),
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "ورد الصباح",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 180,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage("assets/images/chat.png"),
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40),
                              SizedBox(width: 11),
                              Text(
                                "تواصل معنا",
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        "كرروا هذا الدعاء 7 مرات",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      m[currentIndex],
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: changeText,
                    child: Icon(Icons.change_circle),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        "أسماء الله الحسنى",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      allahNames[currentIndex1],
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: changeText1,
                    child: Icon(Icons.change_circle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
