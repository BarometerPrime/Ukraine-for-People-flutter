import 'package:flutter/material.dart';

class AllTransport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        title: Text('Transport'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.orangeAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: 432,
        height: 736,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                // Container(
                //   height: 260,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Cardtrall1(),
                        Cardtrall2(),
                        //  Cardtrall3(),
                      ],
                    ),
                  ],
                ),

                // Container(
                //   height: 260,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Cardtrall1(),
                        Cardtrall2(),
                        //  Cardtrall3(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cardtrall1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 350,
      // decoration: BoxDecoration(
      // gradient: LinearGradient(
      //   colors: [
      //     Colors.purpleAccent,
      //     Colors.greenAccent[400],
      //   ],
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      // ),
      // ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            height: 130,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.png'),
                // image: NetworkImage(
                //     'https://images.unsplash.com/photo-1600653066531-3f0c81efd1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cardtrall2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 350,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Colors.purpleAccent,
      //       Colors.greenAccent[400],
      //     ],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   ),
      // ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            height: 130,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage('assets/images/bg2.png'),
                // image: NetworkImage(
                //     'https://images.unsplash.com/photo-1583458006012-cb6e59c4322a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
