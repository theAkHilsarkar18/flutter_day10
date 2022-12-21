import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l1 = ["🇮🇳","🚩","🇦🇺","🇱🇰","🇯🇵",  "🇬🇧","🇵🇰","🇾🇪"];
  List l2 = ["India - Delhi","Hindu - Ayodhya","Australia - Sydney","Shri Lanka - Colombo","Japan - Tokyo", "United Kingdom - London","Pakistan - Islamabad","Yeman - Sana"];
  List colorList = [Colors.green.shade50,Colors.red.shade50,Colors.blue.shade50,Colors.orange.shade50,Colors.red.shade50,Colors.blue.shade50,Colors.green.shade50,Colors.black12];
  List colorList2 = [Colors.green,Colors.red,Colors.blue,Colors.orange,Colors.red,Colors.blue,Colors.green,Colors.black];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(actions: [Icon(Icons.menu,color: Colors.red,)],leading: Icon(Icons.favorite_border,color: Colors.red),title: Text("Country List",style: TextStyle(color: Colors.red,letterSpacing: 5)),backgroundColor: Colors.white,shape: Border(bottom: BorderSide(color: Colors.red,style: BorderStyle.solid,width: 3))),
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                l1.asMap().entries.map((e) => customContainer(e.key,colorList[e.key],colorList2[e.key])).toList(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: l2.asMap().entries.map((e) => customContainer2(e.key,colorList[e.key],colorList2[e.key])).toList(),
              ),
            ],
            // l1.map((e) => customContainer()).toList(),
          ),
        ),
      ),
    );
  }

  Widget customContainer(int i,Color c1 , Color c3) {
    return Container(
      alignment: Alignment.center,
      child: Text("${l1[i]}", style: TextStyle(fontSize: 40)),
      margin: EdgeInsets.all(10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
        Border.all(color: c3, style: BorderStyle.solid, width: 2),
        color: c1,
      ),
    );
  }

  Widget customContainer2(int j, Color c2 , Color c3) {
    return Container(
      alignment: Alignment.center,
      child: Text("${l2[j]}",style: TextStyle(color: c3,fontSize: 20)),
      height: 80,
      width: 380,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: c2,
          border: Border.all(
              color: c3, style: BorderStyle.solid, width: 2)),
    );
  }
}
