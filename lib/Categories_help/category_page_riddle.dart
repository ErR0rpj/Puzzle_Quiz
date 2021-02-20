import 'package:flutter/material.dart';





class Categoryriddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Classic Riddles', 'assets/cookiecream.jpg',
                      true, false, context),
                  _buildCard('Easy Riddles', 'assets/cookiemint.jpg',
                      false, false, context),
                  _buildCard('Medium Riddles',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('Difficult Riddles',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('Funny Riddles',  'assets/cookiechoco.jpg',
                      false, false, context),
                  _buildCard('Math Riddles',  'assets/cookiemint.jpg',
                      false, false, context),
                  _buildCard('Adults Riddle',  'assets/cookiecream.jpg',
                      true, false, context),
                  _buildCard('Kids Riddle',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('What Am I Riddles',  'assets/cookiechoco.jpg',
                      false, false, context),
                  _buildCard('What is it Riddles',  'assets/cookiemint.jpg',
                      false, false, context),
                  _buildCard('Who is it Riddle',  'assets/cookiecream.jpg',
                      true, false, context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {

            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                                : Icon(Icons.favorite_border,
                                color: Color(0xFFEF7532))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),

                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),

                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),

                ]
                )
            )
        )
    );
  }
}