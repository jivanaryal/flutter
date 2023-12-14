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
              height: 40,
              width: 100,
              decoration: BoxDecoration(
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
            ),
          )
        ],
      ),
    );
  }
}
