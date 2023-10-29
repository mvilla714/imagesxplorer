import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imagesxplorer/models/heroModel.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ImageExplorer(),
  ));
}

class ImageExplorer extends StatefulWidget {
  const ImageExplorer({super.key});

  @override
  State<ImageExplorer> createState() => _ImageExplorerState();
}

class _ImageExplorerState extends State<ImageExplorer> {
  String heroName = "";
  int n = 0;
  List<HeroModel> heroList = [
    HeroModel(
      name: "Batman",
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=cfa2a58f0f9906e7e6ce6f7db781c4ed5448a453-9099160-images-thumbs&n=13",
    ),
    HeroModel(
        name: "Superman",
        imageUrl:
            "https://avatars.mds.yandex.net/i?id=1bc9093b8396d3d08289f93d547c30d2268b5983-9863899-images-thumbs&n=13"),
    HeroModel(
        name: "Spiderman",
        imageUrl:
            "https://avatars.mds.yandex.net/i?id=c48548f8c3ac12fc725db0211c456c5174adc75f-10104781-images-thumbs&n=13"),
    HeroModel(
        name: "Iron Man",
        imageUrl:
            "https://avatars.mds.yandex.net/i?id=319162fdcefeccd04cb3e2a6fd9f56fb8ba18661-10119934-images-thumbs&n=13"),
    HeroModel(
        name: "Hulk",
        imageUrl:
            "https://avatars.mds.yandex.net/i?id=45abaef3ad4ac867d7bfa77327b65a97ee4c20b6-8276139-images-thumbs&n=13"),
    HeroModel(
        name: "Mujer Maravilla",
        imageUrl:
            "https://avatars.mds.yandex.net/i?id=64a3e5fc95d2522e803129f503461dde8e4a8e62-9151250-images-thumbs&n=13"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Play"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(heroList[n].imageUrl),
                ) //Image.network(heroList[n].imageUrl),
                ),
            SizedBox(height: 20),
            Text("Nombre del Heroe : $heroName"),
            SizedBox(height: 10),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      heroName = heroList[n].name;
                      setState(() {});
                    },
                    child: Text("Mostrar Nombre")),
                ElevatedButton(
                    onPressed: () {
                      n = Random().nextInt(heroList.length);
                      heroName = "";
                      setState(() {});
                    },
                    child: Text("Siguiente")),
              ],
            )
          ],
        ),
      )),
    );
  }
}
