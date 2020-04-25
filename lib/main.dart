import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
} 

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900].withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20)
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Text(
                        'Charles Michel!',
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.add_box,
                            size: 50,
                            color: Color(0xffB70F44),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'First',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffB70F44)),
                              ),
                              Text(
                                'ALERT',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffB70F44)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(right: 30),
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  "https://i.pravatar.cc/150?img=2")))),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xffB70F44),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Medical Emergency Call',
                                style: TextStyle(
                                  color: Color(0xffB70F44),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'First Aid Information',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Friend In Need',
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Find Nearby Health Places',
                                style: TextStyle(
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Get 24h Roadside Assistance',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    height: 80,
                    width: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: customShadow,
                      ),
                      child: Icon(
                        Icons.perm_phone_msg,
                        color: Color(0xffB70F44),
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
