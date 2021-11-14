import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.expand_more),
          title: Text(
              "6201 Hollywood",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
                Icons.menu,
              color: Colors.black,
            ),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              height: 70,
              child: RowScroll(),
            ),
            Container(
              height: 580,
              margin: EdgeInsets.all(10),
              child: Scrollbar(
                isAlwaysShown: false,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Buger1(),
                      Buger1(),
                      Buger1(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowScroll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://image.itmedia.co.jp/business/articles/2106/01/kk_burger_00.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://www.kk-oyama.co.jp/images/material/activity_img001.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://img.cookingschool.jp/c/w=300,h=300,a=2,o=1,f=webp:auto/upload/blog/00/00/01/44/81/3772aa9facfb272ccf71db6a95ec6ec.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://img02.shop-pro.jp/PA01127/336/product/43382543_o3.jpg?20120516154918',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://www.fashion-press.net/img/news/51288/lvs.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://www.freshnessburger.co.jp/images/menu/orange_juice.jpg',
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

class Buger1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/03/a0003407/img/basic/a0003407_main.jpg?20200622083822&q=80&rw=750&rh=536',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Text(
              'Avocado Bacon Burger',
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: Text(
                      '＄7.89',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    '610 cal.',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}