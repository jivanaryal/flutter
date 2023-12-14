import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("counter $counter"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
                print("this is elevate button");
                print(counter);
              },
              child: Text("click")),
          TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
                print("this is elevate button");
                print(counter);
              },
              child: Text("text button")),
          Icon(
            Icons.check,
            size: 50,
            color: Colors.deepPurpleAccent,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
          IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.logout),
            label: Text("logout"),
          ),
          InkWell(
            onTap: () {
              print("this is container");
            },
            child: Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.adventurewhitemountain.com/uploads/img/1611741076-mardi-himal-trekking.jpg"),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3,
                      color: Colors.red,
                      blurRadius: 7,
                      offset: Offset(2, 6)),
                  BoxShadow(
                      color: Colors.blue, blurRadius: 7, offset: Offset(2, -5))
                ],
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [Colors.red, Colors.blue, Colors.yellow]),
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Text(
                "Hello World",
                style: TextStyle(
                    fontSize: 30, fontFamily: AutofillHints.addressCity),
              ),
            ),
          ),
          Card(
            elevation: 18.0,
            color: Colors.yellow,
            child: Container(
              height: 150,
              child: Text(
                "this is new font family hahaha",
                style: TextStyle(
                    fontFamily: "Whisper", fontSize: 30, color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
