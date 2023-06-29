import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: null,
        title: const Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            "Sneakers",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            "Football",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            "Soccer",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text(
                            "Golf",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    _customList('images/one.jpg', 'red')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customList(image, tag) {
    return Hero(
        tag: tag,
        child: GestureDetector(
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(image),
                )),
            child: Column(
              children: [
                Text(
                  'Sneakers',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
