import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    Widget Side_icon(Icon numme) {
      return GestureDetector(
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black12,
            border: Border.all(color: const Color(0xa8cec7c7).withOpacity(0.4)),
          ),
          child: numme,
        ),
      );
    }

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        var images = [
          "assets/images/chair5.jpg",
          "assets/images/chair2.jpg",
          "assets/images/chair4.jpg",
          "assets/images/chair5.jpg",
          "assets/images/chair6.jpg",
        ];
        var title = [
          "Las Vaegas Chair",
          "boston rover",
          "holly Woood",
          "Califonia wood",
          "African wood",
          "Galilian mark"
        ];
        var price = ["234", "578", "348", "940", "839", "489"];

        var width = constraints.maxWidth;
        var height = constraints.maxHeight;
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: width / 5,
                height: height / 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.brown.withOpacity(0.2), Colors.white],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      stops: [0.5, 1.0]),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0, left: 10, top: 8, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  size: 30,
                                ),
                                onPressed: () {}),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Fine",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "GrenzeGotisch"),
                              ),
                              Text(
                                "Woods",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 25,
                                    fontFamily: "GrenzeGotisch"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Side_icon(Icon(Icons.search)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, right: 20, left: 50),
                          child: Text("Wooden Classic Chairs",
                              style: TextStyle(
                                fontSize: 27,
                              )),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 3.0, right: 20, bottom: 20, left: 50),
                          child: Text("Lorem ipsum forsee the main",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 350,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, int index) {
                                  return Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      child: SizedBox(
                                          height: 200,
                                          width: 250,
                                          child: Container(
                                            height: 200,
                                            margin: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                color: (index % 2 == 0)
                                                    ? Colors.white
                                                    : Colors.brown,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black12,
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: 250,
                                                  height: 190,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "${images[index]}"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "${title[index]}",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "Lorem ipsum i foresee u",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey),
                                                  ),
                                                ),
                                                SizedBox(height: 15),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "N${price[index]}",
                                                    style: TextStyle(
                                                      fontSize: 28,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            )
          ],
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            current = index;
          },
          currentIndex: current,
          selectedItemColor: Colors.brown,
          selectedFontSize: 30,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.brown,
                icon: Icon(Icons.panorama_horizontal),
                title: Container(
                  height: 0.0,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Container(
                  height: 0.0,
                )),
          ]),
    );
  }
}
