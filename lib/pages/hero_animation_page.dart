import 'package:flutter/material.dart';

class HeroAnimationPage extends StatefulWidget {
  @override
  State<HeroAnimationPage> createState() => _HeroAnimationPageState();
}

var animalsList = [
  AnimalModel("lion", "assets/images/lion.jpeg"),
  AnimalModel("cat", "assets/images/cat.jpeg"),
  AnimalModel("dog", "assets/images/dog.jpeg"),
  AnimalModel("sqrel", "assets/images/sqrel.jpg"),
  AnimalModel("lion2", "assets/images/lion.jpeg"),
  AnimalModel("cat2", "assets/images/cat.jpeg"),
  AnimalModel("dog2", "assets/images/dog.jpeg"),
  AnimalModel("sqrel2", "assets/images/sqrel.jpg")
];

class _HeroAnimationPageState extends State<HeroAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hero animation"),
      ),
      body: ListView.builder(
          itemCount: animalsList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnimalDetailPage(
                            animalsList[index].path, animalsList[index].name)));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Hero(
                        tag: animalsList[index].name,
                        child: Image.asset(
                          animalsList[index].path,
                          width: 50,
                          height: 50,
                        )),
                    Text("   ${index + 1}  ${animalsList[index].name}")
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class AnimalDetailPage extends StatelessWidget {
  String path;
  String name;
  AnimalDetailPage(this.path, this.name, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: Hero(
            tag: name,
            child: Image.asset(
              path,
              fit: BoxFit.fill,
            )));
  }
}

//model class

class AnimalModel {
  String name;
  String path;
  AnimalModel(this.name, this.path);
}
