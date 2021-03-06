import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var addressContainer = Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "风景区地址",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "湖北省十堰市丹江口",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text("66"),
        ],
      ),
    );

    var buttonsContainer = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, "电话"),
          buildButtonColumn(Icons.near_me, "导航"),
          buildButtonColumn(Icons.share, "分享"),
        ],
      ),
    );

    var textContainer = Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        """
      武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北省西北部十堰市丹江口市。东接襄阳市，西靠十堰市 ，南望神农架，北临南水北调中线源头丹江口水库。
明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世 [1]  。武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派 [1]  。截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。 [2-3] 
1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位” [4]  。2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”。2010至2013年，武当山分别被评为国家AAAAA级旅游风景区、国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。
        """,
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: "布局综合示例",
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen[600],
          accentColor: Colors.orange[600]),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "武当山风景区",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(children: [
          Image.asset(
            "images/wudang.jpeg",
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          addressContainer,
          buttonsContainer,
          textContainer,
        ]),
      ),
    );
  }

  buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.lightGreen[600]),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        ),
      ],
    );
  }
}
