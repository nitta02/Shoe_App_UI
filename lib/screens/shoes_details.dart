// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shoe_app_ui/screens/home_screen.dart';
import 'package:flutter/services.dart';

class ShoesDetails extends StatefulWidget {
  final String image;
  const ShoesDetails({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  State<ShoesDetails> createState() => _ShoesDetailsState();
}

class _ShoesDetailsState extends State<ShoesDetails> {
  @override
  void initState() {
    super.initState();
    // Hide the navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  void dispose() {
    // Show the navigation bar when the widget is disposed
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show the navigation bar when the back button is pressed
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
        return true;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Hero(
            tag: 'red',
            child: Container(
              padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.image),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(5, 10),
                      blurRadius: 10.0,
                    )
                  ]),
              child: Stack(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Sneakers',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Nikee',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: const Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: const Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: const Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.8,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
